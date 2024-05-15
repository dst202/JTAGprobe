
#include "FreeRTOS.h"
#include "task.h"

#include <pico/stdlib.h>
#include <stdio.h>
#include <string.h>

#include "bsp/board.h"
#include "tusb.h"

#include "get_serial.h"
#include "tusb_edpt_handler.h"
#include "DAP.h"
#include "board_pico_config.h"
#include "DAP_config.h"
#include "probe.h"



// Define JTAG buffer size
#define JTAG_BUFFER_SIZE 64

// Define JTAG_BUILD_REQUEST and required variables

   

#define JTAG_BUILD_REQUEST(operation, register) (((operation) << 16) | (register))


// UART0 for debugprobe debug
// UART1 for debugprobe to target device

static uint8_t TxDataBuffer[CFG_TUD_HID_EP_BUFSIZE];
static uint8_t RxDataBuffer[CFG_TUD_HID_EP_BUFSIZE];
//static uint8_t JTAGBuffer[JTAG_BUFFER_SIZE];




//RTOS thread definition and  priority

#define THREADED 1

#define TUD_TASK_PRIO  (tskIDLE_PRIORITY + 2)
#define DAP_TASK_PRIO  (tskIDLE_PRIORITY + 1)



//task handle

TaskHandle_t dap_taskhandle, tud_taskhandle;





//USB thread to be written here

void usb_thread(void *ptr)
{
    TickType_t wake;
    wake = xTaskGetTickCount();
    do {
        tud_task();
#ifdef PROBE_USB_CONNECTED_LED
        if (!gpio_get(PROBE_USB_CONNECTED_LED) && tud_ready())
            gpio_put(PROBE_USB_CONNECTED_LED, 1);
        else
            gpio_put(PROBE_USB_CONNECTED_LED, 0);
#endif
        // Go to sleep for up to a tick if nothing to do
        if (!tud_task_event_ready())
            xTaskDelayUntil(&wake, 1);
    } while (1);
}






// Workaround API change in 0.13
#if (TUSB_VERSION_MAJOR == 0) && (TUSB_VERSION_MINOR <= 12)
#define tud_vendor_flush(x) ((void)0)
#endif







//Main function begins here ,Call all the required functions here to be executed JTAG not yet declared

int main(void) {

    probe_info("Welcome to jtagprobe!\n");
    // Iniatalizing all functions except JTAG
    //bi_decl_config();
    board_init();
    usb_serial_init();
    tusb_init();
    stdio_uart_init();


    //led_init removed for the sake of simiplicity
    //led_init();

    if (THREADED) {
        /* UART needs to preempt USB as if we don't, characters get lost */
        xTaskCreate(usb_thread, "TUD", configMINIMAL_STACK_SIZE, NULL, TUD_TASK_PRIO, &tud_taskhandle);
        /* Lowest priority thread is debug - need to shuffle buffers before we can toggle swd... */
        xTaskCreate(dap_thread, "DAP", configMINIMAL_STACK_SIZE, NULL, DAP_TASK_PRIO, &dap_taskhandle);
        vTaskStartScheduler();

    }

    while (!THREADED) {
        tud_task();




        // In the non-threaded mode, continuously perform JTAG operations and forward data to USB
        // Example: JTAG_Transfer(request, &data);
        // Example: tud_hid_report(0, data, JTAG_BUFFER_SIZE);
        // Perform JTAG operation to read the IDCODE register



        uint32_t idcode;
        uint32_t request;

        request = JTAG_BUILD_REQUEST(ID_DAP_Transfer | DAP_TRANSFER_RnW | DAP_TRANSFER_APnDP, ID_DAP_JTAG_IDCODE);
        JTAG_Transfer(request, &idcode);

        // Forward the IDCODE data to the USB HID interface
        tud_hid_report(0, (uint8_t*)&idcode, sizeof(uint32_t));

        //Report buffer size
        //tud_hid_report(0, data, JTAG_BUFFER_SIZE);

        // Delay for a short period to avoid busy-waiting
        vTaskDelay(pdMS_TO_TICKS(10));















#if (PROBE_DEBUG_PROTOCOL == PROTO_DAP_V2)
      if (tud_vendor_available()) {
          uint32_t resp_len;
          tud_vendor_read(RxDataBuffer, sizeof(RxDataBuffer));
          resp_len = DAP_ProcessCommand(RxDataBuffer, TxDataBuffer);
          tud_vendor_write(TxDataBuffer, resp_len);
      }
#endif
    }

    return 0;
}    

//Main function ends  here 















uint16_t tud_hid_get_report_cb(uint8_t itf, uint8_t report_id, hid_report_type_t report_type, uint8_t* buffer, uint16_t reqlen)
{
  /*TODO not Implemented
  (void) itf;
  (void) report_id;
  (void) report_type;
  (void) buffer;
  (void) reqlen;
*/
  return 0;
}
















void tud_hid_set_report_cb(uint8_t itf, uint8_t report_id, hid_report_type_t report_type, uint8_t const* RxDataBuffer, uint16_t bufsize)
{
  uint32_t response_size = TU_MIN(CFG_TUD_HID_EP_BUFSIZE, bufsize);

  // This doesn't use multiple report and report ID
  (void) itf;
  (void) report_id;
  (void) report_type;

  // You can process the received HID report from the host here if needed
  //USB to JTAG to be processed here
  // For now, let's forward it to JTAG (DAP) thread
  // Example:  xQueueSendToBack(JTAGQueue, RxDataBuffer, 0);

    DAP_ProcessCommand(RxDataBuffer, TxDataBuffer);
    tud_hid_report(0, TxDataBuffer, response_size);
}













//Required only to be compatible with ms windows devices 





#if (PROBE_DEBUG_PROTOCOL == PROTO_DAP_V2)
extern uint8_t const desc_ms_os_20[];

bool tud_vendor_control_xfer_cb(uint8_t rhport, uint8_t stage, tusb_control_request_t const * request)
{
  // nothing to with DATA & ACK stage
  if (stage != CONTROL_STAGE_SETUP) return true;

  switch (request->bmRequestType_bit.type)
  {
    case TUSB_REQ_TYPE_VENDOR:
      switch (request->bRequest)
      {
        case 1:
          if ( request->wIndex == 7 )
          {
            // Get Microsoft OS 2.0 compatible descriptor
            uint16_t total_len;
            memcpy(&total_len, desc_ms_os_20+8, 2);

            return tud_control_xfer(rhport, request, (void*) desc_ms_os_20, total_len);
          }else
          {
            return false;
          }

        default: break;
      }
    break;
    default: break;
  }

  // stall unknown request
  return false;
}
#endif

void vApplicationTickHook (void)
{
};

void vApplicationStackOverflowHook(TaskHandle_t Task, char *pcTaskName)
{
  panic("stack overflow (not the helpful kind) for %s\n", *pcTaskName);
}

void vApplicationMallocFailedHook(void)
{
  panic("Malloc Failed\n");
};

// Code to implement JTAG scan chain sequnce and starting sequence and starting sequence

//dependencies or variables required for possible required functions to work
//1
uint8_t id;
uint8_t*info;

//2
const uint8_t *request; 
uint8_t *response;

//3





// to get dap information

static uint8_t DAP_Info(uint8_t id, uint8_t *info);

//To get DAP host status

static uint32_t DAP_HostStatus(const uint8_t *request, uint8_t *response)
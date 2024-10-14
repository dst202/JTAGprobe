# Install script for directory: /home/teja/pico/pico-sdk/lib/mbedtls/include

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/teja/pico/JTAGprobe/build/_deps")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE MESSAGE_NEVER PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/aes.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/aesni.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/arc4.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/aria.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/asn1.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/asn1write.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/base64.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/bignum.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/blowfish.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/bn_mul.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/camellia.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ccm.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/certs.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/chacha20.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/chachapoly.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/check_config.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/cipher.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/cipher_internal.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/cmac.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/compat-1.3.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/config.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/config_psa.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/constant_time.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/debug.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/des.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/dhm.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ecdh.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ecdsa.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ecjpake.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ecp.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ecp_internal.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/entropy.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/entropy_poll.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/error.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/gcm.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/havege.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/hkdf.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/md.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/md2.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/md4.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/md5.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/md_internal.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/net.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/net_sockets.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/nist_kw.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/oid.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/padlock.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/pem.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/pk.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/pk_internal.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/pkcs11.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/pkcs12.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/pkcs5.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/platform.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/platform_time.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/platform_util.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/poly1305.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/psa_util.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ripemd160.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/rsa.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/rsa_internal.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/sha1.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/sha256.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/sha512.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ssl.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ssl_internal.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/threading.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/timing.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/version.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/x509.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/x509_crl.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/x509_crt.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/x509_csr.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE MESSAGE_NEVER PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_builtin_composites.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_builtin_primitives.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_compat.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_config.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_driver_common.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_driver_contexts_composites.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_driver_contexts_primitives.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_extra.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_platform.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_se_driver.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_sizes.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_struct.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_types.h"
    "/home/teja/pico/pico-sdk/lib/mbedtls/include/psa/crypto_values.h"
    )
endif()


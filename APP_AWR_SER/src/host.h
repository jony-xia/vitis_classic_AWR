#ifndef HOST_H
#define HOST_H

#include <stdint.h>

int32_t Host_spiOpen(uint8_t deviceIndex, void **handle);
int32_t Host_spiClose(void *handle);
int32_t Host_spiRead(void *handle, uint8_t *buf, uint16_t len);
int32_t Host_spiWrite(void *handle, uint8_t *buf, uint16_t len);
int32_t Host_enableDevice(uint8_t deviceIndex);
int32_t Host_disableDevice(uint8_t deviceIndex);

#endif // HOST_H

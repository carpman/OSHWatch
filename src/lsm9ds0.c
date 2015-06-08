#include "hal.h"

#include "lsm9ds0.h"

void LSM9DS0_Init(void)
{
    uint8_t readBuffer[6];
    I2C_ReadReg(0x1D << 1, WHO_AM_I_G, readBuffer, 1);
}

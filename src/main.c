#include "stm32f0xx_conf.h"

#include "hal.h"
#include "display.h"
#include "bt.h"
#include "lsm9ds0.h"

int main(void)
{
    SystemInit();
    SystemCoreClockUpdate();
    
    Clock_Setup();
    GPIO_Setup();
    SPI_Setup();
    I2C_Setup();
    UART_Setup();

    display_init();

    display_raw_fill_rect(0,0,128,96,1024);
    display_raw_fill_rect(0,0,128,96,2048);
    //display_write(10, 10, "READY", 1024, 2048, 1);

    //LSM9DS0_Init();

    bt_startup();

	while(1);
}

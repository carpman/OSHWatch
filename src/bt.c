#include "debug.h"
#include "hal.h"

#include "bt.h"

uint8_t bt_command_mode(void)
{
    uart_send_string("^#^$^%");
    return 1;
}

void bt_startup(void)
{
    char buffer[255];

    bt_command_mode();
    uart_receive_string_until(buffer, 64, '\r');
    debug_print(buffer);
    //uart_send_string("at+ab reset\r\n");
    //uart_send_string("at+ab changebaud 115200\r\n");
    //uart_send_string("At+ab AutoReconnect e\r\n");
    #ifdef DEBUG
    uart_send_string("at+ab EraseBondTable\r\n");
    #endif
}

uint8_t bt_bond(void)
{
    char buffer[255];

    bt_command_mode();
    uart_send_string("at+ab enablebond\r\n");
    uart_receive_string_until(buffer, 255, '\r');

    return 1;
}

#include "debug.h"

#include "bt.h"

void uart_send_string(char *string)
{
    uint8_t index = 0;
    unsigned char c = string[index];

    while(c != 0)
    {
        while (USART_GetFlagStatus(USART1, USART_FLAG_TXE) == RESET);
        USART_SendData(USART1, c);
        index++;
        c = string[index];
    }
}

uint8_t uart_receive_string(char *dest, uint8_t length)
{
    uint8_t i;
    for(i = 0; i < length; i++){
        while(USART_GetFlagStatus(USART1, USART_FLAG_RXNE) == RESET);
        dest[i] = USART_ReceiveData(USART1);
        dest[i+1] = 0;
    }
    return i;
}

uint8_t uart_receive_string_until(char *dest, uint8_t length, unsigned char stop)
{
    uint8_t i;
    for(i = 0; i < length; i++){
        while(USART_GetFlagStatus(USART1, USART_FLAG_RXNE) == RESET);
        dest[i] = USART_ReceiveData(USART1);
        if(dest[i] == stop)
        {
            dest[i+1] = 0;
            break;
        }
    }
    return i;
}

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

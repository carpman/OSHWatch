#ifndef __bt_h__
#define __bt_h__

uint8_t uart_recieve_string(char *dest, uint8_t length);
void uart_send_string(char *string);
uint8_t uart_receive_string_until(char *dest, uint8_t length, unsigned char stop);

void bt_startup(void);


#endif

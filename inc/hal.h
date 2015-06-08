#ifndef __hal_h__
#define __hal_h__


#define DISPLAY_DC_RESET_BANK   GPIOC
#define DISPLAY_RESET_PIN       GPIO_Pin_7
#define DISPLAY_DC_PIN          GPIO_Pin_8
#define DISPLAY_CS_PIN          GPIO_Pin_9


#define SPI_BANK                GPIOB
#define SPI_SCK_PIN             GPIO_Pin_3
#define SPI_MOSI_PIN            GPIO_Pin_5
#define SPI_MISO_PIN            GPIO_Pin_4

//PB13 sck
//PB14 data
#define I2C_BANK                GPIOB
#define I2C_SCK_PIN             GPIO_Pin_10
#define I2C_SDA_PIN             GPIO_Pin_11

#define UART_BANK               GPIOA
#define UART_TX_PIN             GPIO_Pin_9
#define UART_RX_PIN             GPIO_Pin_10
#define UART_CTS_PIN            GPIO_Pin_11
#define UART_RTS_PIN            GPIO_Pin_12

void Clock_Setup(void);
void SPI_Setup(void);
void I2C_Setup(void);
void UART_Setup(void);
void GPIO_Setup(void);

void I2C_WriteRegister(uint8_t addr, uint8_t reg, uint8_t val);
uint8_t I2C_ReadReg(uint8_t addr, uint8_t reg, uint8_t *buffer, uint8_t length);

uint8_t uart_recieve_string(char *dest, uint8_t length);
void uart_send_string(char *string);
uint8_t uart_receive_string_until(char *dest, uint8_t length, unsigned char stop);

void Delay(uint32_t Time);

#endif

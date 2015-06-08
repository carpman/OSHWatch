#include "hal.h"

volatile uint32_t MSec = 0;

void SysTick_Handler(void) {
    MSec++;
}

void Clock_Setup(void){
    FLASH_SetLatency(FLASH_Latency_1);

    RCC_PLLConfig(RCC_PLLSource_HSI_Div2, RCC_PLLMul_9);
    RCC_PLLCmd(ENABLE);
    while(RCC_GetFlagStatus(RCC_FLAG_PLLRDY) == RESET) {}
    RCC_SYSCLKConfig(RCC_SYSCLKSource_PLLCLK);

    RCC_HCLKConfig(RCC_SYSCLK_Div1);
    RCC_PCLKConfig(RCC_HCLK_Div1);

    //GPIO clock
    RCC_AHBPeriphClockCmd(RCC_AHBPeriph_GPIOA | RCC_AHBPeriph_GPIOB | RCC_AHBPeriph_GPIOC, ENABLE);

    //SPI clock
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_SPI1, ENABLE);

    //I2C clock
    RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C2, ENABLE);

    //USART clock
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);
}

void SPI_Setup(void){
	SPI_InitTypeDef SPI_InitStructure;
		
	SPI_InitStructure.SPI_Direction = SPI_Direction_2Lines_FullDuplex;
	SPI_InitStructure.SPI_Mode = SPI_Mode_Master;
    SPI_InitStructure.SPI_DataSize = SPI_DataSize_8b;
    SPI_InitStructure.SPI_CPOL = SPI_CPOL_High;
    SPI_InitStructure.SPI_CPHA = SPI_CPHA_2Edge;
    SPI_InitStructure.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_16;
    SPI_InitStructure.SPI_NSS = SPI_NSS_Soft;
    SPI_InitStructure.SPI_FirstBit = SPI_FirstBit_MSB;
    SPI_InitStructure.SPI_CRCPolynomial = 7;

    SPI_Cmd(SPI1, DISABLE);
    SPI_Init(SPI1, &SPI_InitStructure);
    SPI_CalculateCRC(SPI1, DISABLE);
    SPI_RxFIFOThresholdConfig(SPI1, SPI_RxFIFOThreshold_QF);
    SPI_Cmd(SPI1, ENABLE);
}

void I2C_Setup(void){
    I2C_InitTypeDef I2C_InitStructure;

    I2C_InitStructure.I2C_Ack = I2C_Ack_Enable;
    I2C_InitStructure.I2C_AnalogFilter = I2C_AnalogFilter_Enable;
    I2C_InitStructure.I2C_Mode = I2C_Mode_I2C;
    I2C_InitStructure.I2C_DigitalFilter = 0;
    I2C_InitStructure.I2C_OwnAddress1 = 0xAF;
    I2C_InitStructure.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
    I2C_InitStructure.I2C_Timing = 0x10805E89;
    I2C_InitStructure.I2C_AnalogFilter = I2C_AnalogFilter_Enable;

    I2C_Init(I2C2, &I2C_InitStructure);
    I2C_Cmd(I2C2, ENABLE);
}

void UART_Setup(void){
    USART_InitTypeDef USART_InitStructure;

    USART_InitStructure.USART_BaudRate = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits = USART_StopBits_1;
    USART_InitStructure.USART_Parity = USART_Parity_No;
    USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;

    USART_Init(USART1, &USART_InitStructure);
    USART_Cmd(USART1, ENABLE);
}

void GPIO_Setup(void){
    GPIO_InitTypeDef GPIO_InitStructure;
    
    //Display Reset and DC pins (PA13 and PA14)
    GPIO_InitStructure.GPIO_Pin = DISPLAY_CS_PIN | DISPLAY_RESET_PIN | DISPLAY_DC_PIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_10MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_OUT;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_Init(DISPLAY_DC_RESET_BANK, &GPIO_InitStructure);

    //SPI
    GPIO_InitStructure.GPIO_Pin = SPI_MOSI_PIN | SPI_MISO_PIN | SPI_SCK_PIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
    GPIO_Init(SPI_BANK, &GPIO_InitStructure);
    
    GPIO_PinAFConfig(SPI_BANK, GPIO_PinSource4, GPIO_AF_0);
    GPIO_PinAFConfig(SPI_BANK, GPIO_PinSource3, GPIO_AF_0);
    GPIO_PinAFConfig(SPI_BANK, GPIO_PinSource5, GPIO_AF_0);

    //I2C
    GPIO_InitStructure.GPIO_Pin = I2C_SCK_PIN | I2C_SDA_PIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_OD;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_NOPULL;
    GPIO_Init(I2C_BANK, &GPIO_InitStructure);
    
    GPIO_PinAFConfig(I2C_BANK, GPIO_PinSource10, GPIO_AF_1);
    GPIO_PinAFConfig(I2C_BANK, GPIO_PinSource11, GPIO_AF_1);

    //UART
    GPIO_InitStructure.GPIO_Pin = UART_TX_PIN | UART_RX_PIN | UART_CTS_PIN | UART_RTS_PIN;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF;
    GPIO_InitStructure.GPIO_OType = GPIO_OType_PP;
    GPIO_InitStructure.GPIO_PuPd = GPIO_PuPd_UP;
    GPIO_Init(UART_BANK, &GPIO_InitStructure);
    
    GPIO_PinAFConfig(UART_BANK, GPIO_PinSource9, GPIO_AF_1);
    GPIO_PinAFConfig(UART_BANK, GPIO_PinSource10, GPIO_AF_1);
    GPIO_PinAFConfig(UART_BANK, GPIO_PinSource11, GPIO_AF_1);
    GPIO_PinAFConfig(UART_BANK, GPIO_PinSource12, GPIO_AF_1);
}

void Delay(uint32_t Time){
    //volatile uint32_t MSStart = MSec;
    //while((MSec-MSStart)<Time) __asm__ volatile ("nop");
    uint32_t i = 0;
    while(i < Time){i++;}
}

void I2C_WriteRegister(uint8_t addr, uint8_t reg, uint8_t val)
{
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_BUSY) == SET);
    I2C_TransferHandling(I2C2, addr, 1, I2C_Reload_Mode, I2C_Generate_Start_Write);
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_TXIS) == RESET);
    I2C_SendData(I2C2, reg);
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_TCR) == RESET);
    I2C_TransferHandling(I2C2, addr, 1, I2C_AutoEnd_Mode, I2C_No_StartStop);
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_TXIS) == RESET);
    I2C_SendData(I2C2, val);
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_STOPF) == RESET);
    I2C_ClearFlag(I2C2, I2C_FLAG_STOPF);
}

uint8_t I2C_ReadReg(uint8_t addr, uint8_t reg, uint8_t *buffer, uint8_t length)
{
    uint8_t count = 0;

    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_BUSY) == SET);
    I2C_TransferHandling(I2C2, addr, 1, I2C_SoftEnd_Mode, I2C_Generate_Start_Write);
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_TXIS) == RESET);
    I2C_SendData(I2C2, reg);
    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_TC) == RESET);
    I2C_TransferHandling(I2C2, addr, length, I2C_AutoEnd_Mode, I2C_Generate_Start_Read);
    
    while(count < length){
        while(I2C_GetFlagStatus(I2C2, I2C_FLAG_RXNE) == RESET);
        buffer[count] = I2C_ReceiveData(I2C2);
        count++;
    }

    while(I2C_GetFlagStatus(I2C2, I2C_FLAG_STOPF) == RESET);
    I2C_ClearFlag(I2C2, I2C_FLAG_STOPF);

    return count;
}

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



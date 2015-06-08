#include "hal.h"
#include "glcdfont.h"
#include "display.h"

static uint8_t display_buffer[128];
static uint8_t display_command_mode = 0;

void display_command(uint8_t command)
{
    if(!display_command_mode)
    {
        GPIO_ResetBits(DISPLAY_DC_RESET_BANK, DISPLAY_DC_PIN); 
        display_command_mode = 1;
    }
    GPIO_ResetBits(DISPLAY_DC_RESET_BANK, DISPLAY_CS_PIN);
    while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE)==RESET){;}
    SPI_SendData8(SPI1, command);
    while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_BSY)==SET){;}
    GPIO_SetBits(DISPLAY_DC_RESET_BANK, DISPLAY_CS_PIN);
}

void display_data(uint8_t data)
{
    if(display_command_mode)
    {
        GPIO_SetBits(DISPLAY_DC_RESET_BANK, DISPLAY_DC_PIN); 
        display_command_mode = 0;
    }
    GPIO_ResetBits(DISPLAY_DC_RESET_BANK, DISPLAY_CS_PIN);
    while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE)==RESET){;}
    SPI_SendData8(SPI1, data);
    while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_BSY)==SET){;}
    GPIO_SetBits(DISPLAY_DC_RESET_BANK, DISPLAY_CS_PIN);
}

void display_raw_fill_rect(uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t fillcolor)
{
    display_command(SSD1351_CMD_SETCOLUMN);
    display_data(x);
    display_data(x+w-1);

    display_command(SSD1351_CMD_SETROW);
    display_data(y);
    display_data(y+h-1);

    display_command(SSD1351_CMD_WRITERAM);
    GPIO_SetBits(DISPLAY_DC_RESET_BANK, DISPLAY_DC_PIN);
    display_command_mode = 0;
    GPIO_ResetBits(DISPLAY_DC_RESET_BANK, DISPLAY_CS_PIN);
    for(int i=0; i < w*h; i++){
        while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE)==RESET){;}
        SPI_SendData8(SPI1, fillcolor >> 8);
        while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_BSY)==SET){;}
        while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_TXE)==RESET){;}
        SPI_SendData8(SPI1, fillcolor);
        while(SPI_I2S_GetFlagStatus(SPI1, SPI_I2S_FLAG_BSY)==SET){;}
    }
    GPIO_SetBits(DISPLAY_DC_RESET_BANK, DISPLAY_CS_PIN);

}

void display_go_to(uint16_t x, uint16_t y)
{
    display_command(SSD1351_CMD_SETCOLUMN);
    display_data(x);
    display_data(SSD1351WIDTH-1);

    display_command(SSD1351_CMD_SETROW);
    display_data(y);
    display_data(SSD1351HEIGHT-1);
}

void display_draw_pixel(uint16_t x, uint16_t y, uint16_t color)
{
    display_go_to(x, y);

    display_command(SSD1351_CMD_WRITERAM);

    display_data(color >> 8);
    display_data(color);
}

void display_char(uint16_t x, uint16_t y, unsigned char c, uint16_t color, uint16_t bg, uint8_t size)
{  
    if(x+8 >= SSD1351WIDTH)
        return;
    for(uint8_t i = 0; i < 6; i++)
    {
        uint8_t line;
        if(i == 5)
            line = 0;
        else
            line = font[(c*5)+i];
        for(uint8_t j = 0; j < 8; j++)
        {
            if(line & 0x01){
                if(size == 1)
                {
                    display_draw_pixel(x+i, y+j, color);
                }
                else
                {
                    display_raw_fill_rect(x+(i*size), y+(j*size), size, size, color);
                }
            }
            else if (bg != color)
            {
                if(size == 1)
                {
                    display_draw_pixel(x+i, y+j, bg);
                }
                else
                {
                    display_raw_fill_rect(x+(i*size), y+(j*size), size, size, bg);
                }

            }
            line >>= 1;
        }
    }
}

void display_write(uint16_t x, uint16_t y, char *text, uint16_t color, uint16_t bg, uint8_t size)
{
    uint8_t index = 0;
    char c = text[index];
    uint16_t xpos = x;
    uint16_t ypos = y;

    while(c != 0)
    {
        display_char(xpos, ypos, c, color, bg, size);
        xpos += (7*size);
        index++;
        c = text[index];
    }

}

void display_init(void)
{
    int i = 0;

    GPIO_SetBits(DISPLAY_DC_RESET_BANK, DISPLAY_CS_PIN);

    GPIO_SetBits(DISPLAY_DC_RESET_BANK, DISPLAY_RESET_PIN); 
    Delay(100);
    GPIO_ResetBits(DISPLAY_DC_RESET_BANK, DISPLAY_RESET_PIN); 
    Delay(100);
    GPIO_SetBits(DISPLAY_DC_RESET_BANK, DISPLAY_RESET_PIN); 

    display_command(SSD1351_CMD_COMMANDLOCK);
    display_data(0x12);
    display_command(SSD1351_CMD_COMMANDLOCK);
    display_data(0xB1);

    display_command(SSD1351_CMD_DISPLAYOFF);

    display_command(SSD1351_CMD_CLOCKDIV);
    display_data(0xF1);

    display_command(SSD1351_CMD_MUXRATIO);
    display_data(127);

    display_command(SSD1351_CMD_SETREMAP);
    display_data(0x74);

    display_command(SSD1351_CMD_SETCOLUMN);
    display_data(0x00);
    display_data(0x7F);
    display_command(SSD1351_CMD_SETROW);
    display_data(0x00);
    display_data(0x7F);

    display_command(SSD1351_CMD_STARTLINE);
    display_data(96);

    display_command(SSD1351_CMD_DISPLAYOFFSET);
    display_data(0);

    display_command(SSD1351_CMD_SETGPIO);
    display_data(0);

    display_command(SSD1351_CMD_FUNCTIONSELECT);
    display_data(0x01);

    display_command(SSD1351_CMD_PRECHARGE);
    display_data(0x32);

    display_command(SSD1351_CMD_VCOMH);
    display_data(0x05);

    display_command(SSD1351_CMD_NORMALDISPLAY);

    display_command(SSD1351_CMD_CONTRASTABC);
    display_data(0xC8);
    display_data(0x80);
    display_data(0xC8);

    display_command(SSD1351_CMD_CONTRASTMASTER);
    display_data(0x0F);

    display_command(SSD1351_CMD_SETVSL);
    display_data(0xA0);
    display_data(0xB5);
    display_data(0x55);

    display_command(SSD1351_CMD_PRECHARGE2);
    display_data(0x01);

    display_command(SSD1351_CMD_DISPLAYON);
}


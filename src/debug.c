#include "display.h"

#include "debug.h"

static uint8_t xpos = 0;
static uint8_t ypos = 0;

void debug_print(char *message){
    #ifdef DEBUG
    display_write(xpos, ypos, message, 1024, 2048, 1);
    xpos += 9;
    if(xpos > SSD1351HEIGHT)
        xpos = 0;
    #endif
}

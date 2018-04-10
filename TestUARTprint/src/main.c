#include <stm32f10x.h>
#include <misc.h>			 // I recommend you have a look at these in the ST firmware folder
#include "stm32UART.h"
#include <stdio.h>



int main(void) {

	int i=500;
  
  init_USART1(9600); // initialize USART1 @ 9600 baud

  USART_puts(USART1, "Init complete! Hello World!\r\n"); // just send a message to indicate that it works


  while (1){  
    /*
     * You can do whatever you want in here 
     */
  }
}




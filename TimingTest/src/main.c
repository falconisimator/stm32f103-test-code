/**
  ******************************************************************************
  * @file    main.c


  * This code is an adaptation made from code posted on github by RoanFourie.
  ******************************************************************************
*/


#include "stm32f10x_conf.h"
#include "rf_stm32f1_led.h"
#include "rf_stm32f1_delay.h"
#include "math.h"
#include <stdio.h>


static void button_setup(void)
{
    GPIO_InitTypeDef  GPIO_InitStructure;

	// Clock Enable
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);

    // Configure as digital input
    GPIO_InitStructure.GPIO_Pin = GPIO_Pin_15;
    GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
    GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOB, &GPIO_InitStructure);
}

int main(void)
{
    // initialize the system frequency
    SystemInit();
    // Delay initialize
    delay_init();
    // all LED initialize
    FM_Led_Init();
    // Initialize the button
    button_setup();



    float test=0;
    while(1)
    {

	  	//test=sin(3.14);
    	delay_us(1);
        FM_Led_Toggle(LED_1);

        //test=sin(2.4);
    	delay_us(1);
        FM_Led_Toggle(LED_1);




    }
}

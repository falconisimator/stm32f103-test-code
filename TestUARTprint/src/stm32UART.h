#include "stm32f10x.h"

void Delay(__IO uint32_t nCount);
void init_USART1(uint32_t baudrate);
void USART_puts(USART_TypeDef* USARTx, volatile char *s);
void USART1_IRQHandler(void);

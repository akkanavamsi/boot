#include "communication.h"

#define USART5_SENT     U5STAbits.TRMT

UART_COM_DATA uartComData5;
uint16_t interCharDelay;
uint8_t rxByte;

void uart5_writeCallback(uintptr_t context)
{
    uartComData5.writeStatus = true;
}

void uart5_readCallback(uintptr_t context)
{         
    interCharDelay = 0;
        UART5_Read(&rxByte, 1);
        uartComData5.receiveBuffer[uartComData5.receiveCount++] = rxByte;
    uartComData5.state = UART_RECEIVE_BUFFER;
}

void communicationTimer(void)
{
    if(uartComData5.state == UART_RECEIVE_BUFFER)
        interCharDelay++;
}

void communicationHandlingDone(void)
{
    uartComData5.readStatus = false;
    uartComData5.state = UART_BUFFER_IDLE;
}

void communication_init(void)
{
    uartComData5.state = UART_BUFFER_INIT;
}

void communication_task(void)
{
    switch(uartComData5.state)
    {
        case UART_BUFFER_INIT:
            UART5_WriteCallbackRegister(uart5_writeCallback, 0);
            UART5_ReadCallbackRegister(uart5_readCallback, 0);
            uartComData5.writeStatus = false;
            uartComData5.readStatus = false;
            U5_EN_Clear();
            while(U5_EN_Get());
            interCharDelay = 0;
            clearSendBuffer();
            clearReceiveBuffer();
            UART5_Read(&rxByte, 1);
            uartComData5.state = UART_BUFFER_IDLE;
            break;
        case UART_SEND_BUFFER:
            U5_EN_Set();
            while(!U5_EN_Get());
            clearReceiveBuffer();
            UART5_Write(uartComData5.sendBuffer, uartComData5.sendCount);
            uartComData5.state = UART_BUFFER_WAIT;
            break;
        case UART_RECEIVE_BUFFER:
            if(interCharDelay > 2)
                uartComData5.readStatus = true;//EOF
            break;
        case UART_BUFFER_ERROR:
            break;
        case UART_BUFFER_WAIT:
            if(USART5_SENT)
            {
                uartComData5.state = UART_BUFFER_IDLE;
                U5_EN_Clear();
                while(U5_EN_Get());
            }
            break;
        default:
        case UART_BUFFER_IDLE:
            break;
    }
}

void clearSendBuffer(void)
{
    memset(uartComData5.sendBuffer,0,COM_BUFFER_SIZE);
    uartComData5.sendCount = 0;
}

void clearReceiveBuffer(void)
{
    memset(uartComData5.receiveBuffer,0,COM_BUFFER_SIZE);
    uartComData5.receiveCount = 0;
}

void sendBuffer(void)
{
    if(uartComData5.state == UART_BUFFER_IDLE)
        uartComData5.state = UART_SEND_BUFFER;
}

bool uart5Busy(void)
{
    if(uartComData5.state == UART_BUFFER_IDLE)
        return false;
    else
        return true;
}
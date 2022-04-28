/* 
 * File:   communication.h
 * Author: RFord7
 *
 * Created on 30 November 2021, 14:25
 */

#ifndef COMMUNICATION_H
#define	COMMUNICATION_H

#include <stddef.h>                  
#include <stdbool.h>                    
#include <stdlib.h>                    
#include <string.h>
#include "definitions.h"  

#define COM_BUFFER_SIZE 220

typedef enum
{
    UART_SEND_BUFFER,
    UART_RECEIVE_BUFFER,
    UART_BUFFER_WAIT,
    UART_BUFFER_IDLE,
    UART_BUFFER_INIT,    
    UART_BUFFER_ERROR,
}UART_BUFFER_STATE;

typedef struct
{
    bool writeStatus;
    bool readStatus;
    uint8_t sendBuffer[COM_BUFFER_SIZE];
    uint8_t receiveBuffer[COM_BUFFER_SIZE];
    uint16_t sendCount;
    uint16_t receiveCount;
    UART_BUFFER_STATE state;
}UART_COM_DATA;

extern UART_COM_DATA uartComData5;

void communication_init(void);
void communication_task(void);
void clearSendBuffer(void);
void clearReceiveBuffer(void);
void sendBuffer(void);
bool uart5Busy(void);
void communicationTimer(void);
void communicationHandlingDone(void);

#endif	/* COMMUNICATION_H */


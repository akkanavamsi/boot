/* 
 * File:   modbus.h
 * Author: RFord7
 *
 * Created on 30 November 2021, 15:21
 */

#ifndef MODBUS_H
#define	MODBUS_H

#include "communication.h"

#define ADR 2
#define READ_COIL 0x1
#define READ_INPUT 0x2
#define READ_HOLD_REG 0x3
#define READ_INPUT_REG 0x4
#define WRITE_HOLD_REG 0x6
#define WRITE_N_HOLD_REG 0x10
#define READ_WRITE_HOLD_REG 0x17
#define ILLEGAL_FUNCTION 0x01
#define ILLEGAL_DATA_ADDRESS 0x02
#define ILLEGAL_DATA_VALUE 0x03
#define NEGATIVE_ACK 0x07
#define SwapBytes(x) (((x) >> 8) | ((x) << 8))
#define CHECK_FRAME_IGNORE 0
#define CHECK_FRAME_GOOD 1
#define CHECK_FRAME_BAD 2

#define HR_MAP_SIZE 120
#define IR_MAP_SIZE 30
#define SEND_BUFFER_SIZE 100

#define FIXED_NODE_ID 1

typedef union X2Bytes 
{
    uint16_t intValue[2];
    int16_t sintValue[2];
    uint32_t longValue;
    int32_t slongValue;
    float floatValue;
    unsigned char byteArray[4];
    struct 
    {
        unsigned char byte0 : 8;
        unsigned char byte1 : 8;
        unsigned char byte2 : 8;
        unsigned char byte3 : 8;
    };
} X2Byte;//Conversion utility

typedef enum
{
    MODBUS_RTU_INIT,
    MODBUS_RTU_RECEIVE,
    MODBUS_RTU_SEND,
    MODBUS_RTU_WAIT,
    MODBUS_RTU_PROCESS,
    MODBUS_RTU_ERROR,
    MODBUS_RTU_IDLE,
}MODBUS_RTU_STATE;

typedef struct
{
    MODBUS_RTU_STATE state;
    uint8_t nodeID;
    uint32_t error;
    uint8_t frameStatus;
}MODBUS_RTU_DATA;

void initModbusRTU(void);
void taskModbusRTU(void);

extern uint16_t holdingRegisters[HR_MAP_SIZE];
extern uint16_t inputRegisters[IR_MAP_SIZE];

#endif	/* MODBUS_H */


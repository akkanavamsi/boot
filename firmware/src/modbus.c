#include "modbus.h"

uint16_t holdingRegisters[HR_MAP_SIZE];
uint16_t inputRegisters[IR_MAP_SIZE];
//uint16_t sendBuffer[SEND_BUFFER_SIZE];

MODBUS_RTU_DATA rtuData;

X2Byte convertorRTU; //Numeric to byte conversion

void createExceptionFrame(uint8_t code);
void createReadResponseFrame(void);
void createWriteResponseFrame(void);
void createWriteNresponseFrame(void);
void createReadWriteResponseFrame(void);
void processFrame(void);
uint16_t calculateCRC(uint8_t *buff,uint16_t length);
uint8_t checkFrame(void);

uint16_t getU16fromBuffer(uint16_t index);

/* Table of CRC values for high order byte */
const uint8_t auchCRCHi[256] = {
0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81,
0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01,
0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41,
0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81,
0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0,
0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01,
0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40,
0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81,
0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01,
0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81,
0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0,
0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01,
0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81, 0x40, 0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41,
0x00, 0xC1, 0x81, 0x40, 0x01, 0xC0, 0x80, 0x41, 0x01, 0xC0, 0x80, 0x41, 0x00, 0xC1, 0x81,
0x40
} ;

/* Table of CRC values for low order byte */
const uint8_t auchCRCLo[256] = {
0x00, 0xC0, 0xC1, 0x01, 0xC3, 0x03, 0x02, 0xC2, 0xC6, 0x06, 0x07, 0xC7, 0x05, 0xC5, 0xC4,
0x04, 0xCC, 0x0C, 0x0D, 0xCD, 0x0F, 0xCF, 0xCE, 0x0E, 0x0A, 0xCA, 0xCB, 0x0B, 0xC9, 0x09,
0x08, 0xC8, 0xD8, 0x18, 0x19, 0xD9, 0x1B, 0xDB, 0xDA, 0x1A, 0x1E, 0xDE, 0xDF, 0x1F, 0xDD,
0x1D, 0x1C, 0xDC, 0x14, 0xD4, 0xD5, 0x15, 0xD7, 0x17, 0x16, 0xD6, 0xD2, 0x12, 0x13, 0xD3,
0x11, 0xD1, 0xD0, 0x10, 0xF0, 0x30, 0x31, 0xF1, 0x33, 0xF3, 0xF2, 0x32, 0x36, 0xF6, 0xF7,
0x37, 0xF5, 0x35, 0x34, 0xF4, 0x3C, 0xFC, 0xFD, 0x3D, 0xFF, 0x3F, 0x3E, 0xFE, 0xFA, 0x3A,
0x3B, 0xFB, 0x39, 0xF9, 0xF8, 0x38, 0x28, 0xE8, 0xE9, 0x29, 0xEB, 0x2B, 0x2A, 0xEA, 0xEE,
0x2E, 0x2F, 0xEF, 0x2D, 0xED, 0xEC, 0x2C, 0xE4, 0x24, 0x25, 0xE5, 0x27, 0xE7, 0xE6, 0x26,
0x22, 0xE2, 0xE3, 0x23, 0xE1, 0x21, 0x20, 0xE0, 0xA0, 0x60, 0x61, 0xA1, 0x63, 0xA3, 0xA2,
0x62, 0x66, 0xA6, 0xA7, 0x67, 0xA5, 0x65, 0x64, 0xA4, 0x6C, 0xAC, 0xAD, 0x6D, 0xAF, 0x6F,
0x6E, 0xAE, 0xAA, 0x6A, 0x6B, 0xAB, 0x69, 0xA9, 0xA8, 0x68, 0x78, 0xB8, 0xB9, 0x79, 0xBB,
0x7B, 0x7A, 0xBA, 0xBE, 0x7E, 0x7F, 0xBF, 0x7D, 0xBD, 0xBC, 0x7C, 0xB4, 0x74, 0x75, 0xB5,
0x77, 0xB7, 0xB6, 0x76, 0x72, 0xB2, 0xB3, 0x73, 0xB1, 0x71, 0x70, 0xB0, 0x50, 0x90, 0x91,
0x51, 0x93, 0x53, 0x52, 0x92, 0x96, 0x56, 0x57, 0x97, 0x55, 0x95, 0x94, 0x54, 0x9C, 0x5C,
0x5D, 0x9D, 0x5F, 0x9F, 0x9E, 0x5E, 0x5A, 0x9A, 0x9B, 0x5B, 0x99, 0x59, 0x58, 0x98, 0x88,
0x48, 0x49, 0x89, 0x4B, 0x8B, 0x8A, 0x4A, 0x4E, 0x8E, 0x8F, 0x4F, 0x8D, 0x4D, 0x4C, 0x8C,
0x44, 0x84, 0x85, 0x45, 0x87, 0x47, 0x46, 0x86, 0x82, 0x42, 0x43, 0x83, 0x41, 0x81, 0x80,
0x40
} ;

void initModbusRTU(void)
{
    rtuData.state = MODBUS_RTU_INIT;  
}

void taskModbusRTU(void)
{
    switch(rtuData.state)
    {
        case MODBUS_RTU_INIT:
            rtuData.nodeID = FIXED_NODE_ID;
            rtuData.error = 0;
            rtuData.frameStatus = CHECK_FRAME_IGNORE;
            communication_init();
            rtuData.state = MODBUS_RTU_IDLE;
            break;
        case MODBUS_RTU_RECEIVE:
            rtuData.frameStatus = checkFrame();
            switch(rtuData.frameStatus)
            {
                default:
                case CHECK_FRAME_IGNORE:
                    rtuData.state = MODBUS_RTU_IDLE;
                    break;
                case CHECK_FRAME_GOOD:
                    rtuData.state = MODBUS_RTU_PROCESS;
                    break;
                case CHECK_FRAME_BAD:
                    rtuData.state = MODBUS_RTU_ERROR;
                    break;
            }
            communicationHandlingDone();
            break;
        case MODBUS_RTU_SEND:
            sendBuffer();
            rtuData.state = MODBUS_RTU_WAIT;
            break;
        case MODBUS_RTU_WAIT:
            if(!uart5Busy())
                rtuData.state = MODBUS_RTU_IDLE;
            break;
        case MODBUS_RTU_PROCESS:
            processFrame();
            rtuData.state = MODBUS_RTU_SEND;//Send response
            break;
        case MODBUS_RTU_ERROR:
            rtuData.error++;
            if( rtuData.frameStatus == CHECK_FRAME_BAD)
                rtuData.state = MODBUS_RTU_SEND;//Send response
            else
                rtuData.state = MODBUS_RTU_IDLE;
            break;
        default:
        case MODBUS_RTU_IDLE:
            if(uartComData5.readStatus)
                rtuData.state = MODBUS_RTU_RECEIVE;
            break;
    }
    communication_task();
}

uint8_t checkFrame(void)
{
    uint16_t regCountW = 0;
    uint16_t headIndexW = 0;
    uint16_t headIndex = getU16fromBuffer(2);
    uint16_t regCount = getU16fromBuffer(4);
    //Check valid CRC
    uint16_t calcCRC = calculateCRC(uartComData5.receiveBuffer,uartComData5.receiveCount - 2);
    convertorRTU.longValue = 0;
    convertorRTU.byte0 = uartComData5.receiveBuffer[uartComData5.receiveCount - 1];
    convertorRTU.byte1 = uartComData5.receiveBuffer[uartComData5.receiveCount - 2];
    uint16_t recCRC = convertorRTU.intValue[0];
    if(calcCRC != recCRC)//Check valid CRC
    {
        //createExceptionFrame(NEGATIVE_ACK);
        return CHECK_FRAME_IGNORE;
    }
    //Check valid address
    if(uartComData5.receiveBuffer[0] != FIXED_NODE_ID)
        return 0;
    //Check valid function
    switch (uartComData5.receiveBuffer[1])
    {
        case READ_HOLD_REG:
            if(headIndex + regCount > HR_MAP_SIZE)
            {
                createExceptionFrame(ILLEGAL_DATA_ADDRESS);
                return CHECK_FRAME_BAD;
            }
            break;
        case READ_INPUT_REG:
            if(headIndex + regCount > IR_MAP_SIZE)
            {
                createExceptionFrame(ILLEGAL_DATA_ADDRESS);
                return CHECK_FRAME_BAD;
            }
            break;
        case WRITE_HOLD_REG:
            if(headIndex > HR_MAP_SIZE)
            {
                createExceptionFrame(ILLEGAL_DATA_ADDRESS);
                return CHECK_FRAME_BAD;
            }
            break;
        case WRITE_N_HOLD_REG:
            if(headIndex + regCount > HR_MAP_SIZE)
            {
                createExceptionFrame(ILLEGAL_DATA_ADDRESS);
                return CHECK_FRAME_BAD;
            }
            break;
        case READ_WRITE_HOLD_REG:
            if(headIndex + regCount > HR_MAP_SIZE)
            {
                createExceptionFrame(ILLEGAL_DATA_ADDRESS);
                return CHECK_FRAME_BAD;
            }
            headIndexW = getU16fromBuffer(6);
            regCountW = getU16fromBuffer(8);
            if(headIndexW + regCountW > HR_MAP_SIZE)
            {
                createExceptionFrame(ILLEGAL_DATA_ADDRESS);
                return CHECK_FRAME_BAD;
            }
            break;
        default:
            createExceptionFrame(ILLEGAL_FUNCTION);
            return CHECK_FRAME_BAD;
            break;
    }
    //Reaching here means frame is valid
    return CHECK_FRAME_GOOD;
}

void createExceptionFrame(uint8_t code)
{
    clearSendBuffer();
    uartComData5.sendBuffer[0] = FIXED_NODE_ID;
    uartComData5.sendBuffer[1] = uartComData5.receiveBuffer[1] | 0x80;
    uartComData5.sendBuffer[2] = code;
    convertorRTU.slongValue = 0;
    convertorRTU.intValue[0] = calculateCRC(uartComData5.sendBuffer,3);
    uartComData5.sendBuffer[3] = convertorRTU.byte1;
    uartComData5.sendBuffer[4] = convertorRTU.byte0;
    uartComData5.sendCount = 5;
}

void createReadResponseFrame(void)
{
    int i,j = 0;
    uint16_t headIndex = getU16fromBuffer(2);
    uint16_t regCount = getU16fromBuffer(4);
    uartComData5.sendBuffer[0] = FIXED_NODE_ID;
    uartComData5.sendBuffer[1] = uartComData5.receiveBuffer[1];
    uartComData5.sendBuffer[2] = regCount * 2;
    for(i = 0; i < regCount;i++)
    {
        convertorRTU.longValue = 0;
        if(uartComData5.sendBuffer[1] == READ_INPUT_REG)
            convertorRTU.intValue[0] = inputRegisters[headIndex + i];
        else
            convertorRTU.intValue[0] = holdingRegisters[headIndex + i];
        j = 2 * i;
        uartComData5.sendBuffer[3 + j] = convertorRTU.byte1;
        uartComData5.sendBuffer[4 + j] = convertorRTU.byte0;
    }
    i = j + 5;
    convertorRTU.slongValue = 0;
    convertorRTU.intValue[0] = calculateCRC(uartComData5.sendBuffer,i);
    uartComData5.sendBuffer[i] = convertorRTU.byte1;
    uartComData5.sendBuffer[ i + 1] = convertorRTU.byte0;
    uartComData5.sendCount = i + 2;
}

void createWriteResponseFrame(void)
{
    uint16_t headIndex = getU16fromBuffer(2);
    holdingRegisters[headIndex] = getU16fromBuffer(4); 
    int i;
    for(i=0;i<8;i++)
        uartComData5.sendBuffer[i] = uartComData5.receiveBuffer[i];
    uartComData5.sendCount = 8;  
}

void createWriteNresponseFrame(void)
{
    int i;
    for(i = 0; i <6;i++)
        uartComData5.sendBuffer[i] = uartComData5.receiveBuffer[i];
    uint16_t headIndex = getU16fromBuffer(2);
    uint16_t regCount = getU16fromBuffer(4);
    for (i = 0;i < regCount;i++)
        holdingRegisters[headIndex + i] = getU16fromBuffer(7 + 2 * i); 
    convertorRTU.slongValue = 0;
    convertorRTU.intValue[0] = calculateCRC(uartComData5.sendBuffer,6);
    uartComData5.sendBuffer[6] = convertorRTU.byte1;
    uartComData5.sendBuffer[7] = convertorRTU.byte0;
    uartComData5.sendCount = 8;
}

void createReadWriteResponseFrame(void)
{
    int i,j = 0;
    uint16_t headIndex = getU16fromBuffer(2);
    uint16_t regCount = getU16fromBuffer(4);
    uartComData5.sendBuffer[0] = FIXED_NODE_ID;
    uartComData5.sendBuffer[1] = uartComData5.receiveBuffer[1];
    uartComData5.sendBuffer[2] = regCount * 2;
    
    for(i = 0; i < regCount;i++)
    {
        convertorRTU.longValue = 0;
        convertorRTU.intValue[0] = holdingRegisters[headIndex + i];
        j = 2 * i;
        uartComData5.sendBuffer[3 + j] = convertorRTU.byte1;
        uartComData5.sendBuffer[4 + j] = convertorRTU.byte0;
    }
    i = j + 5;
    convertorRTU.slongValue = 0;
    convertorRTU.intValue[0] = calculateCRC(uartComData5.sendBuffer, i);
    uartComData5.sendBuffer[i] = convertorRTU.byte1;
    uartComData5.sendBuffer[i + 1] = convertorRTU.byte0;
    uartComData5.sendCount = i + 2;    
    uint16_t headIndexW = getU16fromBuffer(6);
    uint16_t regCountW = getU16fromBuffer(8);
    for (i = 0;i < regCountW;i++)
       holdingRegisters[headIndexW + i] = getU16fromBuffer(11 + 2 * i); 
}

uint16_t calculateCRC(uint8_t *buff,uint16_t length) //Calculates 16 bit CRC
{
    uint16_t temp = 0xFFFF;
    uint8_t uchCRCHi = 0xFF ; 			/* high byte of CRC initialized */
    uint8_t uchCRCLo = 0xFF ; 			/* low byte of CRC initialized */
    uint8_t uIndex;/* will index into CRC lookup table */
    uint8_t usDataLen;
    uint8_t *puchMsg;
    usDataLen = length;
    puchMsg = buff;
    while (usDataLen) 						/* pass through message buffer */
    {
        uIndex = uchCRCHi ^ *puchMsg++ ; 		/* calculate the CRC */
        uchCRCHi = uchCRCLo ^ auchCRCHi[uIndex] ;
        uchCRCLo = auchCRCLo[uIndex] ;
        usDataLen--;
    }
    temp = uchCRCLo;
    temp = temp << 8;
    temp = temp | uchCRCHi;
    return SwapBytes(temp);
    //return temp;// Use if CRC bytes dont need swapping
}

uint16_t getU16fromBuffer(uint16_t index)
{
    convertorRTU.slongValue = 0;
    convertorRTU.byte0 = uartComData5.receiveBuffer[index + 1];
    convertorRTU.byte1 = uartComData5.receiveBuffer[index];
    return convertorRTU.intValue[0];
}

void processFrame(void)
{
    switch(uartComData5.receiveBuffer[1])
    {
        case READ_HOLD_REG:
        case READ_INPUT_REG:
            createReadResponseFrame();
            break;
        case WRITE_HOLD_REG:
            createWriteResponseFrame();
            break;
        case WRITE_N_HOLD_REG:
            createWriteNresponseFrame();
            break;
        case READ_WRITE_HOLD_REG:
            createReadWriteResponseFrame();
            break;
        default:
            break;
    }
}
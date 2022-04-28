#ifndef _BOOTLOADER_H
#define _BOOTLOADER_H

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdlib.h>
#include "definitions.h"
#include "peripheral/nvm/plib_nvm.h"
#include "sys/kmem.h"
#include "register_map.h"
#include "modbus.h"

#define NVM_PROGRAM_UNLOCK_KEY1 0xAA996655
#define NVM_PROGRAM_UNLOCK_KEY2 0x556699AA
#define BLOCK_SIZE 188
#define APP_START_ADDRESS 0x1D000000
#define APP_END_ADDRESS   0x1D0FBFFF
#define APP_KSEG0_START_ADDRESS 0x9D000000
#define APP_OPP_BANK_START_ADDRESS 0x9D100000
#define LOW_EM_EEPROM 0x9D0FC000
#define HIGH_EM_EEPROM 0x9D1FC000
#define NO_FLASH_PAGES 64//64 pages per 1Mbyte bank, each page is 16k
#define NO_APP_FLASH_PAGES 63// 1 page reseverd for virtual EEPROM
#define APP_SIZE 0xFC000
#define APP_AUTO_BOOT 0xBE
#define BL_APP_RAM_TABLE KVA0_TO_KVA1(0x80000000)
#define BL_KEY 0x5048434DUL
#define DCACHE_CLEAN_BY_ADDR(start, sz)

typedef enum
{         
    BL_SWITCH_2_APP = 0x1001,
    BL_ERASE_FLASH = 0xE10A,
    BL_WRITE_APP = 0xDA01,
    BL_SET_BANK_1 = 0xBA01,
    BL_SET_BANK_2 = 0xBA02,
    BL_IDLE = 0x0000,
}BL_COMMAND;

typedef enum
{
    APP_BLANK = 0x0,
    APP_VALID = 0x1,
    APP_CRC_ERROR = 0x2,
    APP_WDT_ERROR = 0x3,
    APP_DMT_ERROR = 0x4,
}BL_APP_STATE;

typedef enum
{
    FLASH_BANK_BLANK = 0,
    FLASH_BANK_1 = 1,
    FLASH_BANK_2 = 2,              
}FLASH_BANK;

typedef enum
{
    BL_STATE_INIT = 0xB000,
    BL_STATE_BOOTLOADER = 0xB001,
    BL_STATE_ERASING = 0xB002,
    BL_STATE_WRITING = 0xB003,
    BL_STATE_ERROR = 0xB004,
    BL_STATE_START_APP = 0xB005,    
    BL_STATE_IDLE = 0xB006,
} BOOTLOADER_STATES;

typedef union
{
    struct
    {
        uint16_t crc;//2 bytes
        uint16_t majVersion;//2 bytes
        uint16_t minVersion;//2 bytes
        uint16_t productType;//2 bytes
        uint8_t bootable;//1 byte
        uint8_t spare[19];//19 bytes
        uint32_t serialNo;//4 bytes
    };
    uint32_t data[8];
}APP_ID_OBJECT;//32 bytes

typedef struct
{
    BL_COMMAND command;
    BL_APP_STATE appState;
    BOOTLOADER_STATES state;
    uint16_t currentBLock;  
    APP_ID_OBJECT highAppID;
    APP_ID_OBJECT lowAppID;
} BOOTLOADER_DATA;

void BOOTLOADER_Tasks(void);
void BOOTLOADER_Initialize(void);
void setFlashBank(FLASH_BANK bank);

#endif	/* BOOTLOADER_H */


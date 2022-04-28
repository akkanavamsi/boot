#include "bootloader.h"

BOOTLOADER_DATA bootloaderData;
uint32_t quadData[4],singleData;
uint32_t dummy_read;

const uint16_t CRCtable[256] = 
{
    0X0000, 0XC0C1, 0XC181, 0X0140, 0XC301, 0X03C0, 0X0280, 0XC241,
    0XC601, 0X06C0, 0X0780, 0XC741, 0X0500, 0XC5C1, 0XC481, 0X0440,
    0XCC01, 0X0CC0, 0X0D80, 0XCD41, 0X0F00, 0XCFC1, 0XCE81, 0X0E40,
    0X0A00, 0XCAC1, 0XCB81, 0X0B40, 0XC901, 0X09C0, 0X0880, 0XC841,
    0XD801, 0X18C0, 0X1980, 0XD941, 0X1B00, 0XDBC1, 0XDA81, 0X1A40,
    0X1E00, 0XDEC1, 0XDF81, 0X1F40, 0XDD01, 0X1DC0, 0X1C80, 0XDC41,
    0X1400, 0XD4C1, 0XD581, 0X1540, 0XD701, 0X17C0, 0X1680, 0XD641,
    0XD201, 0X12C0, 0X1380, 0XD341, 0X1100, 0XD1C1, 0XD081, 0X1040,
    0XF001, 0X30C0, 0X3180, 0XF141, 0X3300, 0XF3C1, 0XF281, 0X3240,
    0X3600, 0XF6C1, 0XF781, 0X3740, 0XF501, 0X35C0, 0X3480, 0XF441,
    0X3C00, 0XFCC1, 0XFD81, 0X3D40, 0XFF01, 0X3FC0, 0X3E80, 0XFE41,
    0XFA01, 0X3AC0, 0X3B80, 0XFB41, 0X3900, 0XF9C1, 0XF881, 0X3840,
    0X2800, 0XE8C1, 0XE981, 0X2940, 0XEB01, 0X2BC0, 0X2A80, 0XEA41,
    0XEE01, 0X2EC0, 0X2F80, 0XEF41, 0X2D00, 0XEDC1, 0XEC81, 0X2C40,
    0XE401, 0X24C0, 0X2580, 0XE541, 0X2700, 0XE7C1, 0XE681, 0X2640,
    0X2200, 0XE2C1, 0XE381, 0X2340, 0XE101, 0X21C0, 0X2080, 0XE041,
    0XA001, 0X60C0, 0X6180, 0XA141, 0X6300, 0XA3C1, 0XA281, 0X6240,
    0X6600, 0XA6C1, 0XA781, 0X6740, 0XA501, 0X65C0, 0X6480, 0XA441,
    0X6C00, 0XACC1, 0XAD81, 0X6D40, 0XAF01, 0X6FC0, 0X6E80, 0XAE41,
    0XAA01, 0X6AC0, 0X6B80, 0XAB41, 0X6900, 0XA9C1, 0XA881, 0X6840,
    0X7800, 0XB8C1, 0XB981, 0X7940, 0XBB01, 0X7BC0, 0X7A80, 0XBA41,
    0XBE01, 0X7EC0, 0X7F80, 0XBF41, 0X7D00, 0XBDC1, 0XBC81, 0X7C40,
    0XB401, 0X74C0, 0X7580, 0XB541, 0X7700, 0XB7C1, 0XB681, 0X7640,
    0X7200, 0XB2C1, 0XB381, 0X7340, 0XB101, 0X71C0, 0X7080, 0XB041,
    0X5000, 0X90C1, 0X9181, 0X5140, 0X9301, 0X53C0, 0X5280, 0X9241,
    0X9601, 0X56C0, 0X5780, 0X9741, 0X5500, 0X95C1, 0X9481, 0X5440,
    0X9C01, 0X5CC0, 0X5D80, 0X9D41, 0X5F00, 0X9FC1, 0X9E81, 0X5E40,
    0X5A00, 0X9AC1, 0X9B81, 0X5B40, 0X9901, 0X59C0, 0X5880, 0X9841,
    0X8801, 0X48C0, 0X4980, 0X8941, 0X4B00, 0X8BC1, 0X8A81, 0X4A40,
    0X4E00, 0X8EC1, 0X8F81, 0X4F40, 0X8D01, 0X4DC0, 0X4C80, 0X8C41,
    0X4400, 0X84C1, 0X8581, 0X4540, 0X8701, 0X47C0, 0X4680, 0X8641,
    0X8201, 0X42C0, 0X4380, 0X8341, 0X4100, 0X81C1, 0X8081, 0X4040 
};

void checkCommand(void);
void writeOneToFlash(uint32_t address, uint32_t data);
void writeFourToFlash(uint32_t address, uint32_t* data);
void writeBlockToFlash();
uint32_t regToU32(int head);
void switch2App(void);
void upDateDefaultIR(void);
void checkCommand(void);

uint16_t calcCRCsw(uint32_t  numBytes);
uint32_t flashBuffer1[4],flashBuffer2[4];
uint16_t crc;
uint32_t *ramKey = (uint32_t *)BL_APP_RAM_TABLE;

bool clearFlashBank(void);//clears flash bank
void updateAppID(void);
void autoStartActiveApp(void);
void writeIdObject(void);
bool appPresent(FLASH_BANK bank);
bool autoBootSelected(FLASH_BANK bank);
FLASH_BANK getActiveBank(void);
FLASH_BANK getOppositeBank(void);
bool bootRequest(void);
bool appErrorCausedReset(void);
void upDateAppState(void);
bool appCrash = false;
uint16_t calcCRC;

union
{
    uint32_t val32;
    uint16_t val16[2];
    uint8_t val8[4];
}convertor;

bool bootRequest(void)
{ 
    if(GPIO_30_Get())
        return true;
    else
        return false;
}

void BOOTLOADER_Initialize(void)
{
    WDT_Clear();
    WDT_Disable();
    bootloaderData.state = BL_STATE_INIT;
    //bootloaderData.state = BL_STATE_BOOTLOADER;
}

void BOOTLOADER_Tasks(void)
{
    switch (bootloaderData.state)
    {
        case BL_STATE_INIT: 
            updateAppID(); 
            if(appErrorCausedReset())//Check if app reset due to error
                appCrash = true;
            else
            {
                appCrash = false;
                if(!bootRequest())//Check if switch to boot selected
                    autoStartActiveApp();//Start app
            }
            bootloaderData.state = BL_STATE_BOOTLOADER;//Start bootloader
            break;
        case BL_STATE_BOOTLOADER:   

            bootloaderData.command = BL_IDLE;
            bootloaderData.state = BL_STATE_IDLE;
            upDateAppState();
            upDateDefaultIR();
            break;
        case BL_STATE_ERASING:
            bootloaderData.state = BL_STATE_IDLE;
            break;
        case BL_STATE_WRITING:
            bootloaderData.state = BL_STATE_IDLE;
            break;
        case BL_STATE_START_APP:
            switch2App();   
            RCONbits.SWR = 0;
            bootloaderData.state = BL_STATE_IDLE;
            break;       
        case BL_STATE_ERROR:
            break;
        case BL_STATE_IDLE:
            checkCommand();
        default:
            break;
    }
    inputRegisters[SYS_STATE] = bootloaderData.state;
}

void upDateDefaultIR(void)
{
    inputRegisters[SYS_PROD_TYPE] = 0xB001;
    inputRegisters[SYS_SERIAL_NO] = (bootloaderData.lowAppID.serialNo >> 16) & 0xffff;
    inputRegisters[SYS_SERIAL_NO + 1] = bootloaderData.lowAppID.serialNo & 0xffff;  
    inputRegisters[SYS_SW_VER_MAJ] =  1;
    inputRegisters[SYS_SW_VER_MIN] = 0;
    inputRegisters[SYS_APP_SW_VER_MAJ] =  bootloaderData.lowAppID.majVersion;
    inputRegisters[SYS_APP_SW_VER_MIN] = bootloaderData.lowAppID.minVersion;
    inputRegisters[SYS_HW_VER_MAJ] = 0x1;
    inputRegisters[SYS_HW_VER_MIN] = 0x0;
    inputRegisters[SYS_CALC_CRC] = calcCRC;
    inputRegisters[SYS_APP_CRC] = bootloaderData.lowAppID.crc;
    inputRegisters[SYS_ACTIVE_BANK] = NVMCONbits.PFSWAP;
    inputRegisters[SYS_APP_STATE] = bootloaderData.appState;
}

bool appErrorCausedReset(void)
{
    if(RCONbits.DMTO)//Dead man timeout
    {
        bootloaderData.appState = APP_DMT_ERROR;
        RCONbits.DMTO = false;
        return true;
    }
    if(RCONbits.WDTO)//Watch dog timeout
    {
        bootloaderData.appState = APP_WDT_ERROR;
        RCONbits.WDTO = false;
        return true;
    }
    return false;
}

void upDateAppState(void)
{
    if(bootloaderData.lowAppID.crc == 0xFFFF)//Blank
    {
        bootloaderData.appState = APP_BLANK;  
        return;
    }
    calcCRC = calcCRCsw(APP_SIZE);
    if(calcCRC != bootloaderData.lowAppID.crc)
    {
        bootloaderData.appState = APP_CRC_ERROR; 
        return;
    }
    if(!appCrash)
        bootloaderData.appState = APP_VALID;  
}

void waitForFlash()
{
    while(NVM_IsBusy() == true);
    if(NVM_ErrorGet() != NVM_ERROR_NONE)
       bootloaderData.state = BL_STATE_ERROR;
    else
        bootloaderData.state = BL_STATE_IDLE;
}

void switch2App(void)
{
    void (*fptr)(void);
    crc = bootloaderData.lowAppID.crc;
    uint32_t msp = *(uint32_t *)(APP_KSEG0_START_ADDRESS);//check not blank
    if (msp == 0xffffffff)
        return;
    if(crc == calcCRCsw(APP_SIZE))
    {
        WDT_Clear();
        WDT_Enable();
        fptr = (void (*)(void))(APP_KSEG0_START_ADDRESS);
        SYS_INT_Disable();
        fptr();
        while(true);
    }
}

bool clearFlashBank(void)//clears flash bank
{
    uint32_t i;
    for(i = 0; i < NO_FLASH_PAGES; i++)
    {
        NVM_PageErase(APP_KSEG0_START_ADDRESS + NVM_FLASH_PAGESIZE * i );
        while(NVM_IsBusy() == true);
        if(NVM_ErrorGet() != NVM_ERROR_NONE)
            return false;//Error
    }
    return true;
}

void checkCommand(void)
{
    switch(holdingRegisters[BL_COMMAND_REG])
    {
        case BL_SET_BANK_1:
            setFlashBank(FLASH_BANK_1);
            holdingRegisters[BL_COMMAND_REG] = 0;
            break;
        case BL_SET_BANK_2:
            setFlashBank(FLASH_BANK_2);
            holdingRegisters[BL_COMMAND_REG] = 0;
            break;
        case BL_SWITCH_2_APP:           
            switch2App();
            holdingRegisters[BL_COMMAND_REG] = 0;
            break;
        case BL_ERASE_FLASH:           
            bootloaderData.state = BL_STATE_ERASING;
            clearFlashBank();         
            inputRegisters[SYS_APP_CRC] = calcCRCsw(APP_SIZE);
            holdingRegisters[BL_COMMAND_REG] = 0;
            break;
        case BL_WRITE_APP://1 block = 188 bytes = 12 x quad writes 
            writeBlockToFlash();            
            if(holdingRegisters[BL_DATA_TABLE_CURRENT] +1 == holdingRegisters[BL_DATA_TABLE_TOTAL])//Last Block
            {
                writeIdObject();               
                bootloaderData.appState = APP_VALID;
                upDateDefaultIR();
            }              
            holdingRegisters[BL_COMMAND_REG] = 0;
            break;
        case BL_IDLE:
        default:
            break;   
    }
}

void writeIdObject(void)
{
    int i;
    bootloaderData.lowAppID.bootable = APP_AUTO_BOOT;
    bootloaderData.lowAppID.crc = calcCRCsw(APP_SIZE);
    bootloaderData.lowAppID.majVersion = holdingRegisters[BL_DATA_TABLE_SW_MAJ];
    bootloaderData.lowAppID.minVersion = holdingRegisters[BL_DATA_TABLE_SW_MIN];
    for (i = 0; i< 8;i++)
    {
        writeOneToFlash(LOW_EM_EEPROM + i * 4, bootloaderData.lowAppID.data[i]);
        waitForFlash();
    }
    bootloaderData.highAppID = *(APP_ID_OBJECT*)(HIGH_EM_EEPROM);
    if(bootloaderData.highAppID.bootable == APP_AUTO_BOOT)
    {
        bootloaderData.highAppID.bootable = 0xFF;
        NVM_PageErase(HIGH_EM_EEPROM);
        while(NVM_IsBusy() == true);
        for (i = 0; i< 8;i++)
        {
            writeOneToFlash(HIGH_EM_EEPROM + i * 4, bootloaderData.highAppID.data[i]);
            waitForFlash();
        }
    }
}

uint32_t regToU32(int head)
{
    uint8_t temp;
    convertor.val16[0] = holdingRegisters[head];
    convertor.val16[1] = holdingRegisters[head +1];
    temp = convertor.val8[0];
    convertor.val8[0] = convertor.val8[1];
    convertor.val8[1] = temp;
    temp = convertor.val8[2];
    convertor.val8[2] = convertor.val8[3];
    convertor.val8[3] = temp;
    return convertor.val32;
}

void writeBlockToFlash()
{
    bootloaderData.state = BL_STATE_WRITING;
    inputRegisters[SYS_STATE] = bootloaderData.state;
    //int i,j,offset;
    uint32_t i;
    uint32_t targetAddress;
//    for(i=0;i<11;i++)// 11 quad writes (176 bytes))
//    {
//        offset = i * 16;
//        targetAddress = APP_START_ADDRESS + (BLOCK_SIZE * holdingRegisters[BL_DATA_TABLE_CURRENT]) + offset;
//        for(j=0;j<4;j++)
//            quadData[j] = regToU32(BL_DATA_TABLE_HEAD + offset/2 + j*2);
//        writeFourToFlash(targetAddress, quadData);    
//        waitForFlash();
//    } 
//    offset += 16;
//    for(i=0;i<3;i++)//3 single writes (12 bytes)
//    {
//        targetAddress = APP_START_ADDRESS + (BLOCK_SIZE * holdingRegisters[BL_DATA_TABLE_CURRENT]) + offset;
//        singleData = regToU32(BL_DATA_TABLE_HEAD + offset/2);
//        writeOneToFlash(targetAddress, singleData);
//        waitForFlash();
//        offset += 4;
//    } 
    
    for(i=0; i < BLOCK_SIZE; i+=4)//47 single writes (188 bytes))
    {
        targetAddress = APP_START_ADDRESS + (BLOCK_SIZE * holdingRegisters[BL_DATA_TABLE_CURRENT]) + i;
        singleData = regToU32(BL_DATA_TABLE_HEAD + i/2);
        writeOneToFlash(targetAddress, singleData);
        waitForFlash();
    }
}

void writeOneToFlash(uint32_t address, uint32_t data)
{
    uint32_t addr =  address & 0x1fffffff;
    NVM_WordWrite(data, addr);
}

void writeFourToFlash(uint32_t address, uint32_t* data)
{  
    uint32_t addr = address & 0x1fffffff;
    NVM_QuadWordWrite(data, addr);
}
    
uint16_t calcCRCsw(uint32_t numBytes)
{
    uint16_t crcWord = 0xffff;
    uint16_t hold = 0;
    uint32_t i,j;
    uint32_t cnt = numBytes/4;
    for (i = 0; i < cnt; i++)
    {
        convertor.val32 = *(uint32_t*)(APP_KSEG0_START_ADDRESS + i * 4);
        for(j= 0;j < 4;j++)
        {
            hold = (uint16_t)(convertor.val8[j] ^ crcWord);
            hold = (uint16_t)(hold & 0x00FF);
            crcWord >>= 8;
            crcWord ^= CRCtable[hold];
        }
    }
    return (crcWord);
}

void setFlashBank(FLASH_BANK bank)
{
    NVMCONCLR = _NVMCON_WREN_MASK;//NVMOP can be written only when WREN is zero. So, clear WREN
    //Write the unlock key sequence
    NVMKEY = 0x0;
    NVMKEY = 0xAA996655;
    NVMKEY = 0x556699AA;
    switch(bank)
    {
        case FLASH_BANK_1:
            NVMCONCLR = _NVMCON_PFSWAP_MASK;//Map Program Flash Memory Bank 1 to lower region
            break;
        case FLASH_BANK_2:
            NVMCONSET = _NVMCON_PFSWAP_MASK;//Map Program Flash Memory Bank 2 to lower region
            break;
        default:
            return;
            break;
    }
    dummy_read = *(uint32_t *)(APP_OPP_BANK_START_ADDRESS);//Dummy read to update swap command
    updateAppID();  
    int i;
    if(bootloaderData.highAppID.bootable == APP_AUTO_BOOT)
    {
        bootloaderData.highAppID.bootable = 0xFF;
        NVM_PageErase(HIGH_EM_EEPROM);
        while(NVM_IsBusy() == true);
        for (i = 0; i< 8;i++)
        {
            writeOneToFlash(HIGH_EM_EEPROM + i * 4, bootloaderData.highAppID.data[i]);
            waitForFlash();
        }
    }
    if(bootloaderData.lowAppID.bootable != APP_AUTO_BOOT)
    {
        bootloaderData.lowAppID.bootable = APP_AUTO_BOOT;
        NVM_PageErase(LOW_EM_EEPROM);
        while(NVM_IsBusy() == true);
        for (i = 0; i< 8;i++)
        {
            writeOneToFlash(LOW_EM_EEPROM + i * 4, bootloaderData.lowAppID.data[i]);
            waitForFlash();
        }
    }   
    upDateDefaultIR();
}

void updateAppID(void)
{
    bootloaderData.lowAppID = *(APP_ID_OBJECT*)(LOW_EM_EEPROM);
    bootloaderData.highAppID = *(APP_ID_OBJECT*)(HIGH_EM_EEPROM);
}

bool appPresent(FLASH_BANK bank)
{
    uint32_t test;
    switch(bank)
    {
        case FLASH_BANK_1:
            if(!NVMCONbits.PFSWAP)
                test = *(uint32_t*)(APP_KSEG0_START_ADDRESS);
            else
                test = *(uint32_t*)(APP_OPP_BANK_START_ADDRESS);
            break;
        case FLASH_BANK_2:
            if(NVMCONbits.PFSWAP)
                test = *(uint32_t*)(APP_KSEG0_START_ADDRESS);
            else
                test = *(uint32_t*)(APP_OPP_BANK_START_ADDRESS);
            break;
        default:
            test = 0xFFFFFFFF;
            break;
    }
    if(test == 0xFFFFFFFF)//Check if blank
        return false;
    else
        return true;
}

bool autoBootSelected(FLASH_BANK bank)
{
    APP_ID_OBJECT id;
    switch(bank)
    {
        case FLASH_BANK_1:
            if(!NVMCONbits.PFSWAP)
                id = *(APP_ID_OBJECT*)(LOW_EM_EEPROM);
            else
                id = *(APP_ID_OBJECT*)(HIGH_EM_EEPROM);
            break;
        case FLASH_BANK_2:
            if(NVMCONbits.PFSWAP)
                id = *(APP_ID_OBJECT*)(LOW_EM_EEPROM);
            else
                id = *(APP_ID_OBJECT*)(HIGH_EM_EEPROM);
            break;
        default:
            return false;
            break;
    }
    if (id.bootable == APP_AUTO_BOOT)
        return true;
    else
        return false;
}

FLASH_BANK getActiveBank(void)
{
    if(!NVMCONbits.PFSWAP)
        return FLASH_BANK_1;
    if(NVMCONbits.PFSWAP)
        return FLASH_BANK_2;
    return FLASH_BANK_BLANK;
}

FLASH_BANK getOppositeBank(void)
{
    if(NVMCONbits.PFSWAP)
        return FLASH_BANK_1;
    if(!NVMCONbits.PFSWAP)
        return FLASH_BANK_2;
    return FLASH_BANK_BLANK;
    
}

void autoStartActiveApp(void)
{
    if(autoBootSelected(FLASH_BANK_2) && !autoBootSelected(FLASH_BANK_1))
        setFlashBank(FLASH_BANK_2);
    if(autoBootSelected(FLASH_BANK_1) && !autoBootSelected(FLASH_BANK_2))
        setFlashBank(FLASH_BANK_1);
    if(autoBootSelected(FLASH_BANK_1) && autoBootSelected(FLASH_BANK_2))
        setFlashBank(FLASH_BANK_1);
    FLASH_BANK bank = getActiveBank();
    if(appPresent(bank))
    {
        switch2App();//Present and bootable
        bank = getOppositeBank();//Active Bank failed, try opposite bank
        setFlashBank(bank);
        switch2App();
        bootloaderData.appState = APP_CRC_ERROR;
        return;//Both failed, switch to bootloader
    }
   bootloaderData.appState = APP_BLANK;
}
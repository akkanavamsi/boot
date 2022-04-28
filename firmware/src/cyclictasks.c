#include "cyclictasks.h"
#include "communication.h"

uint16_t microSec500 = 0;
uint16_t milliSec = 0;
uint16_t sec = 0;
bool microSec,tenMicroSec;

void cyclicEventHandler(uintptr_t context, uint32_t alarmCount)
{
    microSec500++;
    if(microSec500 >= 2)//1ms 
    {
        microSec500 = 0;  
        milliSec++;
        communicationTimer();
    }
    if(milliSec >= 10)//10ms
    {
        milliSec = 0;
        sec++;
    }
    if(sec > 100)
    {
        HB_Toggle();
        sec = 0;
    }
}

void initCyclicTasks(void)
{
    microSec = false;
    tenMicroSec = false;
    TMR1_CallbackRegister(cyclicEventHandler,(uintptr_t)NULL);
    TMR1_Start();
    milliSec = 0;
}

void cyclicTasks(void)
{
 
}
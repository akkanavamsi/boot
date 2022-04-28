#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mz2048emf.mk)" "nbproject/Makefile-local-pic32mz2048emf.mk"
include nbproject/Makefile-local-pic32mz2048emf.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz2048emf
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/main.c ../src/config/pic32mz2048emf/initialization.c ../src/config/pic32mz2048emf/interrupts.c ../src/config/pic32mz2048emf/exceptions.c ../src/config/pic32mz2048emf/stdio/xc32_monitor.c ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c ../src/config/pic32mz2048emf/system/int/src/sys_int.c ../src/config/pic32mz2048emf/system/reset/sys_reset.c ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c ../src/bootloader.c ../src/communication.c ../src/cyclictasks.c ../src/modbus.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/2011214951/initialization.o ${OBJECTDIR}/_ext/2011214951/interrupts.o ${OBJECTDIR}/_ext/2011214951/exceptions.o ${OBJECTDIR}/_ext/479398035/xc32_monitor.o ${OBJECTDIR}/_ext/485799749/plib_clk.o ${OBJECTDIR}/_ext/2119953908/plib_gpio.o ${OBJECTDIR}/_ext/2120007736/plib_evic.o ${OBJECTDIR}/_ext/485818730/plib_wdt.o ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o ${OBJECTDIR}/_ext/2119550965/plib_uart5.o ${OBJECTDIR}/_ext/1987664614/sys_int.o ${OBJECTDIR}/_ext/1029438501/sys_reset.o ${OBJECTDIR}/_ext/485810632/plib_nvm.o ${OBJECTDIR}/_ext/1360937237/bootloader.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ${OBJECTDIR}/_ext/1360937237/modbus.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/2011214951/initialization.o.d ${OBJECTDIR}/_ext/2011214951/interrupts.o.d ${OBJECTDIR}/_ext/2011214951/exceptions.o.d ${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d ${OBJECTDIR}/_ext/485799749/plib_clk.o.d ${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d ${OBJECTDIR}/_ext/2120007736/plib_evic.o.d ${OBJECTDIR}/_ext/485818730/plib_wdt.o.d ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d ${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d ${OBJECTDIR}/_ext/1987664614/sys_int.o.d ${OBJECTDIR}/_ext/1029438501/sys_reset.o.d ${OBJECTDIR}/_ext/485810632/plib_nvm.o.d ${OBJECTDIR}/_ext/1360937237/bootloader.o.d ${OBJECTDIR}/_ext/1360937237/communication.o.d ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d ${OBJECTDIR}/_ext/1360937237/modbus.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/2011214951/initialization.o ${OBJECTDIR}/_ext/2011214951/interrupts.o ${OBJECTDIR}/_ext/2011214951/exceptions.o ${OBJECTDIR}/_ext/479398035/xc32_monitor.o ${OBJECTDIR}/_ext/485799749/plib_clk.o ${OBJECTDIR}/_ext/2119953908/plib_gpio.o ${OBJECTDIR}/_ext/2120007736/plib_evic.o ${OBJECTDIR}/_ext/485818730/plib_wdt.o ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o ${OBJECTDIR}/_ext/2119550965/plib_uart5.o ${OBJECTDIR}/_ext/1987664614/sys_int.o ${OBJECTDIR}/_ext/1029438501/sys_reset.o ${OBJECTDIR}/_ext/485810632/plib_nvm.o ${OBJECTDIR}/_ext/1360937237/bootloader.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ${OBJECTDIR}/_ext/1360937237/modbus.o

# Source Files
SOURCEFILES=../src/main.c ../src/config/pic32mz2048emf/initialization.c ../src/config/pic32mz2048emf/interrupts.c ../src/config/pic32mz2048emf/exceptions.c ../src/config/pic32mz2048emf/stdio/xc32_monitor.c ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c ../src/config/pic32mz2048emf/system/int/src/sys_int.c ../src/config/pic32mz2048emf/system/reset/sys_reset.c ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c ../src/bootloader.c ../src/communication.c ../src/cyclictasks.c ../src/modbus.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mz2048emf.mk ${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFM144
MP_LINKER_FILE_OPTION=,--script="..\src\btl.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz2048emf/d38d68d51234e5fce59b1568d5c9486f1e811860 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/initialization.o: ../src/config/pic32mz2048emf/initialization.c  .generated_files/flags/pic32mz2048emf/43e8b69632762f6925ad49c0e3356042380a8112 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/initialization.o.d" -o ${OBJECTDIR}/_ext/2011214951/initialization.o ../src/config/pic32mz2048emf/initialization.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/interrupts.o: ../src/config/pic32mz2048emf/interrupts.c  .generated_files/flags/pic32mz2048emf/d60ab76ca573cb34228b3d28ab017f9b63cbdb16 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/interrupts.o.d" -o ${OBJECTDIR}/_ext/2011214951/interrupts.o ../src/config/pic32mz2048emf/interrupts.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/exceptions.o: ../src/config/pic32mz2048emf/exceptions.c  .generated_files/flags/pic32mz2048emf/d95d77dafe69a1e9fe0c3d28a41e73d02bbb3840 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/exceptions.o.d" -o ${OBJECTDIR}/_ext/2011214951/exceptions.o ../src/config/pic32mz2048emf/exceptions.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/479398035/xc32_monitor.o: ../src/config/pic32mz2048emf/stdio/xc32_monitor.c  .generated_files/flags/pic32mz2048emf/3985c60ef296dbafa31fa5cd183f1a8f03ef492a .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/479398035" 
	@${RM} ${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/479398035/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/479398035/xc32_monitor.o ../src/config/pic32mz2048emf/stdio/xc32_monitor.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485799749/plib_clk.o: ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz2048emf/ce048e3eb405b23c0988c8d07e2223380cbfb156 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/485799749" 
	@${RM} ${OBJECTDIR}/_ext/485799749/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/485799749/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485799749/plib_clk.o.d" -o ${OBJECTDIR}/_ext/485799749/plib_clk.o ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119953908/plib_gpio.o: ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz2048emf/e0828ae3dbc5e36f2cba84f2a243cb505037e33f .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2119953908" 
	@${RM} ${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119953908/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2119953908/plib_gpio.o ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120007736/plib_evic.o: ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz2048emf/551bb1d3ae339459c88b599438771c8ecd683b28 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2120007736" 
	@${RM} ${OBJECTDIR}/_ext/2120007736/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120007736/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120007736/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2120007736/plib_evic.o ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485818730/plib_wdt.o: ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz2048emf/30126b061dfc41d5216a89cd6b057d283b3f1863 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/485818730" 
	@${RM} ${OBJECTDIR}/_ext/485818730/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/485818730/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485818730/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/485818730/plib_wdt.o ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119569291/plib_tmr1.o: ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mz2048emf/dd283e7b6b7d8427a1b76865ac2872ec5a68a49d .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2119569291" 
	@${RM} ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/932338027/plib_spi1_master.o: ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz2048emf/f34784733592e47d99e7f65f7850e9dae0c90edc .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/932338027" 
	@${RM} ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119550965/plib_uart5.o: ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz2048emf/3e884bd8dc742ebd8a8174bc7d636d644f1a811e .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2119550965" 
	@${RM} ${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119550965/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/2119550965/plib_uart5.o ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1987664614/sys_int.o: ../src/config/pic32mz2048emf/system/int/src/sys_int.c  .generated_files/flags/pic32mz2048emf/1206b0d7ec56b2dd37bc87259032b1c3d9c0de63 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1987664614" 
	@${RM} ${OBJECTDIR}/_ext/1987664614/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987664614/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987664614/sys_int.o.d" -o ${OBJECTDIR}/_ext/1987664614/sys_int.o ../src/config/pic32mz2048emf/system/int/src/sys_int.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029438501/sys_reset.o: ../src/config/pic32mz2048emf/system/reset/sys_reset.c  .generated_files/flags/pic32mz2048emf/339769b4c1127aba9d388e954f57a31cdf6ababe .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1029438501" 
	@${RM} ${OBJECTDIR}/_ext/1029438501/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029438501/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029438501/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1029438501/sys_reset.o ../src/config/pic32mz2048emf/system/reset/sys_reset.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485810632/plib_nvm.o: ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz2048emf/66bb399c065d80f95b4808d794748ba55c5e4bdc .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/485810632" 
	@${RM} ${OBJECTDIR}/_ext/485810632/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/485810632/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485810632/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/485810632/plib_nvm.o ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bootloader.o: ../src/bootloader.c  .generated_files/flags/pic32mz2048emf/6873be6a7983b55a80ddca55c0cccfda4cf78dad .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bootloader.o.d" -o ${OBJECTDIR}/_ext/1360937237/bootloader.o ../src/bootloader.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz2048emf/5935b5bccf206943067787c6b08f2a20897d6794 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/cyclictasks.o: ../src/cyclictasks.c  .generated_files/flags/pic32mz2048emf/8720333cbdf84ce9575858dfd3bde9f762521483 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ../src/cyclictasks.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/modbus.o: ../src/modbus.c  .generated_files/flags/pic32mz2048emf/b846d23c18f5e6005d306442ef16df11a1dedbd4 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/modbus.o.d" -o ${OBJECTDIR}/_ext/1360937237/modbus.o ../src/modbus.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz2048emf/858d718a94194996175d3addecd1ebeeafec6779 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/initialization.o: ../src/config/pic32mz2048emf/initialization.c  .generated_files/flags/pic32mz2048emf/7fbc6a1c9a0f460a4dbcf8c6a2b5cc7c4cc27aeb .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/initialization.o.d" -o ${OBJECTDIR}/_ext/2011214951/initialization.o ../src/config/pic32mz2048emf/initialization.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/interrupts.o: ../src/config/pic32mz2048emf/interrupts.c  .generated_files/flags/pic32mz2048emf/51171a9f2966c9fd05b8ceeb7e6a37e861472089 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/interrupts.o.d" -o ${OBJECTDIR}/_ext/2011214951/interrupts.o ../src/config/pic32mz2048emf/interrupts.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/exceptions.o: ../src/config/pic32mz2048emf/exceptions.c  .generated_files/flags/pic32mz2048emf/cb8d8f2a20785a7fe6539c0e69f97245412e21ae .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/exceptions.o.d" -o ${OBJECTDIR}/_ext/2011214951/exceptions.o ../src/config/pic32mz2048emf/exceptions.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/479398035/xc32_monitor.o: ../src/config/pic32mz2048emf/stdio/xc32_monitor.c  .generated_files/flags/pic32mz2048emf/30e2f3ab27239a10ab8938af606ca8ceec3ec7e5 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/479398035" 
	@${RM} ${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/479398035/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/479398035/xc32_monitor.o ../src/config/pic32mz2048emf/stdio/xc32_monitor.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485799749/plib_clk.o: ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz2048emf/44c30578e6c39d7a42ccfaf4add56de5e5f9b16a .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/485799749" 
	@${RM} ${OBJECTDIR}/_ext/485799749/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/485799749/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485799749/plib_clk.o.d" -o ${OBJECTDIR}/_ext/485799749/plib_clk.o ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119953908/plib_gpio.o: ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz2048emf/1d365ff9718e853ef2a670a5d5cabe42bdabb46 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2119953908" 
	@${RM} ${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119953908/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2119953908/plib_gpio.o ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120007736/plib_evic.o: ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz2048emf/671d0f9a52bec7ec04a220246b10f7e3db1a38c5 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2120007736" 
	@${RM} ${OBJECTDIR}/_ext/2120007736/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120007736/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120007736/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2120007736/plib_evic.o ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485818730/plib_wdt.o: ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz2048emf/82a776f44fc78ee27fc4e2cda752f5a25c37d18 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/485818730" 
	@${RM} ${OBJECTDIR}/_ext/485818730/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/485818730/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485818730/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/485818730/plib_wdt.o ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119569291/plib_tmr1.o: ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mz2048emf/4931b4a13cdb80ec661414398cd6acd4dcb518d5 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2119569291" 
	@${RM} ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/932338027/plib_spi1_master.o: ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz2048emf/dba956f4ad81266ff2c0669b981691279ea782c9 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/932338027" 
	@${RM} ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119550965/plib_uart5.o: ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz2048emf/5d74f07dcc7c894741be48942b5bb9fae8a7a65c .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/2119550965" 
	@${RM} ${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119550965/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/2119550965/plib_uart5.o ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1987664614/sys_int.o: ../src/config/pic32mz2048emf/system/int/src/sys_int.c  .generated_files/flags/pic32mz2048emf/79b77870fc3808b8b2b5ceffe22989c3ae971366 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1987664614" 
	@${RM} ${OBJECTDIR}/_ext/1987664614/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987664614/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987664614/sys_int.o.d" -o ${OBJECTDIR}/_ext/1987664614/sys_int.o ../src/config/pic32mz2048emf/system/int/src/sys_int.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029438501/sys_reset.o: ../src/config/pic32mz2048emf/system/reset/sys_reset.c  .generated_files/flags/pic32mz2048emf/2b1cd2dd3c714d8e6af16562072b9f52234cddba .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1029438501" 
	@${RM} ${OBJECTDIR}/_ext/1029438501/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029438501/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029438501/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1029438501/sys_reset.o ../src/config/pic32mz2048emf/system/reset/sys_reset.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485810632/plib_nvm.o: ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz2048emf/fd68320c2071915ffea9dbe477f918d19a98931b .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/485810632" 
	@${RM} ${OBJECTDIR}/_ext/485810632/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/485810632/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485810632/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/485810632/plib_nvm.o ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bootloader.o: ../src/bootloader.c  .generated_files/flags/pic32mz2048emf/40825ada6200ba14a21abcaf6ac9c8dc244ef627 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bootloader.o.d" -o ${OBJECTDIR}/_ext/1360937237/bootloader.o ../src/bootloader.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz2048emf/d1ecf029ffa46c6c911cb05e69b5b44dfed0ef43 .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/cyclictasks.o: ../src/cyclictasks.c  .generated_files/flags/pic32mz2048emf/9bb7e3131d09b7932a683a50b266ebfe8068f5fa .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ../src/cyclictasks.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/modbus.o: ../src/modbus.c  .generated_files/flags/pic32mz2048emf/d5c8e2977ee5bb67728f57e9de90da7242ff1ad .generated_files/flags/pic32mz2048emf/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/modbus.o.d" -o ${OBJECTDIR}/_ext/1360937237/modbus.o ../src/modbus.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/btl.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/btl.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz2048emf=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

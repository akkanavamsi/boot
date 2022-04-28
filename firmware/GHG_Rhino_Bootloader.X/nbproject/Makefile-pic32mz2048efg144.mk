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
ifeq "$(wildcard nbproject/Makefile-local-pic32mz2048efg144.mk)" "nbproject/Makefile-local-pic32mz2048efg144.mk"
include nbproject/Makefile-local-pic32mz2048efg144.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mz2048efg144
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c ../src/config/pic32mz2048efg144/system/int/src/sys_int.c ../src/config/pic32mz2048efg144/system/reset/sys_reset.c ../src/config/pic32mz2048efg144/initialization.c ../src/config/pic32mz2048efg144/interrupts.c ../src/config/pic32mz2048efg144/exceptions.c ../src/main.c ../src/communication.c ../src/cyclictasks.c ../src/modbus.c ../src/bootloader.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1159154194/plib_clk.o ${OBJECTDIR}/_ext/1573972417/plib_evic.o ${OBJECTDIR}/_ext/1573918589/plib_gpio.o ${OBJECTDIR}/_ext/1159143311/plib_nvm.o ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o ${OBJECTDIR}/_ext/1573515646/plib_uart5.o ${OBJECTDIR}/_ext/1159135213/plib_wdt.o ${OBJECTDIR}/_ext/556480458/xc32_monitor.o ${OBJECTDIR}/_ext/662348739/sys_int.o ${OBJECTDIR}/_ext/107057422/sys_reset.o ${OBJECTDIR}/_ext/1317212144/initialization.o ${OBJECTDIR}/_ext/1317212144/interrupts.o ${OBJECTDIR}/_ext/1317212144/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ${OBJECTDIR}/_ext/1360937237/modbus.o ${OBJECTDIR}/_ext/1360937237/bootloader.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1159154194/plib_clk.o.d ${OBJECTDIR}/_ext/1573972417/plib_evic.o.d ${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d ${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d ${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d ${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d ${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d ${OBJECTDIR}/_ext/662348739/sys_int.o.d ${OBJECTDIR}/_ext/107057422/sys_reset.o.d ${OBJECTDIR}/_ext/1317212144/initialization.o.d ${OBJECTDIR}/_ext/1317212144/interrupts.o.d ${OBJECTDIR}/_ext/1317212144/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/communication.o.d ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d ${OBJECTDIR}/_ext/1360937237/modbus.o.d ${OBJECTDIR}/_ext/1360937237/bootloader.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1159154194/plib_clk.o ${OBJECTDIR}/_ext/1573972417/plib_evic.o ${OBJECTDIR}/_ext/1573918589/plib_gpio.o ${OBJECTDIR}/_ext/1159143311/plib_nvm.o ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o ${OBJECTDIR}/_ext/1573515646/plib_uart5.o ${OBJECTDIR}/_ext/1159135213/plib_wdt.o ${OBJECTDIR}/_ext/556480458/xc32_monitor.o ${OBJECTDIR}/_ext/662348739/sys_int.o ${OBJECTDIR}/_ext/107057422/sys_reset.o ${OBJECTDIR}/_ext/1317212144/initialization.o ${OBJECTDIR}/_ext/1317212144/interrupts.o ${OBJECTDIR}/_ext/1317212144/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ${OBJECTDIR}/_ext/1360937237/modbus.o ${OBJECTDIR}/_ext/1360937237/bootloader.o

# Source Files
SOURCEFILES=../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c ../src/config/pic32mz2048efg144/system/int/src/sys_int.c ../src/config/pic32mz2048efg144/system/reset/sys_reset.c ../src/config/pic32mz2048efg144/initialization.c ../src/config/pic32mz2048efg144/interrupts.c ../src/config/pic32mz2048efg144/exceptions.c ../src/main.c ../src/communication.c ../src/cyclictasks.c ../src/modbus.c ../src/bootloader.c



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
	${MAKE}  -f nbproject/Makefile-pic32mz2048efg144.mk ${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ2048EFG144
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
${OBJECTDIR}/_ext/1159154194/plib_clk.o: ../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz2048efg144/237d0c9ea69d67759fafe3311916faebd9285ea7 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1159154194" 
	@${RM} ${OBJECTDIR}/_ext/1159154194/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159154194/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159154194/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1159154194/plib_clk.o ../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573972417/plib_evic.o: ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz2048efg144/280b8779a65fa421e331dcb0a762e92d74d95f39 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1573972417" 
	@${RM} ${OBJECTDIR}/_ext/1573972417/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573972417/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573972417/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1573972417/plib_evic.o ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573918589/plib_gpio.o: ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz2048efg144/44c96217eeb2869f6fc3a035ef70c1e73276f1c4 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1573918589" 
	@${RM} ${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573918589/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1573918589/plib_gpio.o ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143311/plib_nvm.o: ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz2048efg144/c5c904ce51d85a3cf0c7f64dcc337b76a60583b0 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1159143311" 
	@${RM} ${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143311/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1159143311/plib_nvm.o ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o: ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz2048efg144/93af2f734d68634daad9b0f4115fa988d2bd800a .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1526010956" 
	@${RM} ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573533972/plib_tmr1.o: ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mz2048efg144/14dd8ba5e7f64c907794c3ae210b354a448b8b76 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1573533972" 
	@${RM} ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573515646/plib_uart5.o: ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz2048efg144/6d311a731465d99ac57b9648d96bf6b44c40e5b6 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1573515646" 
	@${RM} ${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573515646/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1573515646/plib_uart5.o ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159135213/plib_wdt.o: ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz2048efg144/c3bdb22c64062ddbcdfb2678cae0f55acc30df72 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1159135213" 
	@${RM} ${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159135213/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1159135213/plib_wdt.o ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556480458/xc32_monitor.o: ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c  .generated_files/flags/pic32mz2048efg144/8a1690a9e2f0302c4d6d4f36d8f3b71464ef101a .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/556480458" 
	@${RM} ${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/556480458/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/556480458/xc32_monitor.o ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662348739/sys_int.o: ../src/config/pic32mz2048efg144/system/int/src/sys_int.c  .generated_files/flags/pic32mz2048efg144/7c5b163d6919eb7d53af912b23093c634b3a0282 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/662348739" 
	@${RM} ${OBJECTDIR}/_ext/662348739/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/662348739/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/662348739/sys_int.o.d" -o ${OBJECTDIR}/_ext/662348739/sys_int.o ../src/config/pic32mz2048efg144/system/int/src/sys_int.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107057422/sys_reset.o: ../src/config/pic32mz2048efg144/system/reset/sys_reset.c  .generated_files/flags/pic32mz2048efg144/1fe075134e80a5147c557d04844946f58aa3a523 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/107057422" 
	@${RM} ${OBJECTDIR}/_ext/107057422/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/107057422/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107057422/sys_reset.o.d" -o ${OBJECTDIR}/_ext/107057422/sys_reset.o ../src/config/pic32mz2048efg144/system/reset/sys_reset.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/initialization.o: ../src/config/pic32mz2048efg144/initialization.c  .generated_files/flags/pic32mz2048efg144/9a7565437704a86dfac9a342bc343e8978d9ae56 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/initialization.o.d" -o ${OBJECTDIR}/_ext/1317212144/initialization.o ../src/config/pic32mz2048efg144/initialization.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/interrupts.o: ../src/config/pic32mz2048efg144/interrupts.c  .generated_files/flags/pic32mz2048efg144/f479668b45d5c3eeb40c37d505a4db87fa663da9 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/interrupts.o.d" -o ${OBJECTDIR}/_ext/1317212144/interrupts.o ../src/config/pic32mz2048efg144/interrupts.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/exceptions.o: ../src/config/pic32mz2048efg144/exceptions.c  .generated_files/flags/pic32mz2048efg144/ff3d35125425bd423158fd4ea6b664b27a1963a1 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/exceptions.o.d" -o ${OBJECTDIR}/_ext/1317212144/exceptions.o ../src/config/pic32mz2048efg144/exceptions.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz2048efg144/3d63c2131856c8eb480f8a12d06ebbd4cd21494 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz2048efg144/a1a09e05e1bf6518876c6c335690b234cf9dde80 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/cyclictasks.o: ../src/cyclictasks.c  .generated_files/flags/pic32mz2048efg144/379858d5df1b3965f71948b444a53a9ee4a0ec44 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ../src/cyclictasks.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/modbus.o: ../src/modbus.c  .generated_files/flags/pic32mz2048efg144/e7688b08663a8a26b4815e4062f40a99e4c11760 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/modbus.o.d" -o ${OBJECTDIR}/_ext/1360937237/modbus.o ../src/modbus.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bootloader.o: ../src/bootloader.c  .generated_files/flags/pic32mz2048efg144/8005148f205c93de64c80d85ec1f09cf2afa589d .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bootloader.o.d" -o ${OBJECTDIR}/_ext/1360937237/bootloader.o ../src/bootloader.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1159154194/plib_clk.o: ../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz2048efg144/1db7f40b53f2edc873c89ed78ab597371491513e .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1159154194" 
	@${RM} ${OBJECTDIR}/_ext/1159154194/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159154194/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159154194/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1159154194/plib_clk.o ../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573972417/plib_evic.o: ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz2048efg144/eb9b3fd05a9d8551538e3d864122049c19f2d9db .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1573972417" 
	@${RM} ${OBJECTDIR}/_ext/1573972417/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573972417/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573972417/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1573972417/plib_evic.o ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573918589/plib_gpio.o: ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz2048efg144/60b8eb2fffd4bb1e45f15bb7dcdd3c2486f41861 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1573918589" 
	@${RM} ${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573918589/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1573918589/plib_gpio.o ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143311/plib_nvm.o: ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz2048efg144/4b93b51a990ac0145606cff78a448d8b191b5c14 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1159143311" 
	@${RM} ${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143311/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1159143311/plib_nvm.o ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o: ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz2048efg144/2fdd0076f3edb7e77e99e0834565904495ee4f86 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1526010956" 
	@${RM} ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573533972/plib_tmr1.o: ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mz2048efg144/8f053c759e031499606ec234292e7f69937e63f6 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1573533972" 
	@${RM} ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573515646/plib_uart5.o: ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz2048efg144/647bc0ae3495a83afd0d3b3de54765a954f37f3e .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1573515646" 
	@${RM} ${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573515646/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1573515646/plib_uart5.o ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159135213/plib_wdt.o: ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz2048efg144/bd94ae01f30c6e09e215ddd4ca43e0f0ef10cff5 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1159135213" 
	@${RM} ${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159135213/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1159135213/plib_wdt.o ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556480458/xc32_monitor.o: ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c  .generated_files/flags/pic32mz2048efg144/599a2896fcd584f10ed5dd4013f3bad840dd4f1f .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/556480458" 
	@${RM} ${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/556480458/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/556480458/xc32_monitor.o ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662348739/sys_int.o: ../src/config/pic32mz2048efg144/system/int/src/sys_int.c  .generated_files/flags/pic32mz2048efg144/5307911c268990b537fa7ff1fce497ddc26c655d .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/662348739" 
	@${RM} ${OBJECTDIR}/_ext/662348739/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/662348739/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/662348739/sys_int.o.d" -o ${OBJECTDIR}/_ext/662348739/sys_int.o ../src/config/pic32mz2048efg144/system/int/src/sys_int.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107057422/sys_reset.o: ../src/config/pic32mz2048efg144/system/reset/sys_reset.c  .generated_files/flags/pic32mz2048efg144/dc68213ed1e4074a86ac2b89632493f59fa92106 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/107057422" 
	@${RM} ${OBJECTDIR}/_ext/107057422/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/107057422/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107057422/sys_reset.o.d" -o ${OBJECTDIR}/_ext/107057422/sys_reset.o ../src/config/pic32mz2048efg144/system/reset/sys_reset.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/initialization.o: ../src/config/pic32mz2048efg144/initialization.c  .generated_files/flags/pic32mz2048efg144/8386958042f1dfa91d415eac2eb8c107825f23a7 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/initialization.o.d" -o ${OBJECTDIR}/_ext/1317212144/initialization.o ../src/config/pic32mz2048efg144/initialization.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/interrupts.o: ../src/config/pic32mz2048efg144/interrupts.c  .generated_files/flags/pic32mz2048efg144/895a6074799f92f83e00b59967104b5f24fe32f1 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/interrupts.o.d" -o ${OBJECTDIR}/_ext/1317212144/interrupts.o ../src/config/pic32mz2048efg144/interrupts.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/exceptions.o: ../src/config/pic32mz2048efg144/exceptions.c  .generated_files/flags/pic32mz2048efg144/9425bbcf6bf7321f5270b43eee56522f46f23e3c .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/exceptions.o.d" -o ${OBJECTDIR}/_ext/1317212144/exceptions.o ../src/config/pic32mz2048efg144/exceptions.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz2048efg144/e4a88d68214d013314f8f0139e54ed01d23f0582 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz2048efg144/f07e3e2eb1d6775e7d97a3e11854eb7907c8d76d .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/cyclictasks.o: ../src/cyclictasks.c  .generated_files/flags/pic32mz2048efg144/edb0305637c885982d0e8e1859d6abe7f64d60f5 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ../src/cyclictasks.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/modbus.o: ../src/modbus.c  .generated_files/flags/pic32mz2048efg144/c565c03c194e8ac39319b8fbaab904a8d22fafb1 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/modbus.o.d" -o ${OBJECTDIR}/_ext/1360937237/modbus.o ../src/modbus.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bootloader.o: ../src/bootloader.c  .generated_files/flags/pic32mz2048efg144/d4f3cffdbdb4f6b2d8930186b99f15d435bd7bc7 .generated_files/flags/pic32mz2048efg144/81bc5fc5a660e0b86762e654f4f91d7af1decfb7
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bootloader.o.d" -o ${OBJECTDIR}/_ext/1360937237/bootloader.o ../src/bootloader.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/btl.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/btl.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz2048efg144=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

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
${OBJECTDIR}/_ext/1159154194/plib_clk.o: ../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz2048efg144/1725814aa7d1d7c8b467a1d07d5a96ad6dabb5cf .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1159154194" 
	@${RM} ${OBJECTDIR}/_ext/1159154194/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159154194/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159154194/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1159154194/plib_clk.o ../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573972417/plib_evic.o: ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz2048efg144/a46e423d051cccec62da54bb47515844cf9ed19b .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1573972417" 
	@${RM} ${OBJECTDIR}/_ext/1573972417/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573972417/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573972417/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1573972417/plib_evic.o ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573918589/plib_gpio.o: ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz2048efg144/b5803fda61b5a59809f4ab6d726307636db12052 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1573918589" 
	@${RM} ${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573918589/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1573918589/plib_gpio.o ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143311/plib_nvm.o: ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz2048efg144/7a34590a95429248a536f7d50219eb74702a3b33 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1159143311" 
	@${RM} ${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143311/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1159143311/plib_nvm.o ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o: ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz2048efg144/e8811b073c4d5eb4471fa8bfe301ffec2e18541a .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1526010956" 
	@${RM} ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573533972/plib_tmr1.o: ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mz2048efg144/29146edd1180007452cee3e02e624694524df774 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1573533972" 
	@${RM} ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573515646/plib_uart5.o: ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz2048efg144/a68b8c56165d291a9e9816b7e196f49e32450899 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1573515646" 
	@${RM} ${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573515646/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1573515646/plib_uart5.o ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159135213/plib_wdt.o: ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz2048efg144/1b42593fbe71e65485ec739f2af02bf3eac648a4 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1159135213" 
	@${RM} ${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159135213/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1159135213/plib_wdt.o ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556480458/xc32_monitor.o: ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c  .generated_files/flags/pic32mz2048efg144/f1545510188ebdf3676efc86df7e1719c60bee50 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/556480458" 
	@${RM} ${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/556480458/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/556480458/xc32_monitor.o ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662348739/sys_int.o: ../src/config/pic32mz2048efg144/system/int/src/sys_int.c  .generated_files/flags/pic32mz2048efg144/7ca24bb24cad0059730492122f25e1305b33db3b .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/662348739" 
	@${RM} ${OBJECTDIR}/_ext/662348739/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/662348739/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/662348739/sys_int.o.d" -o ${OBJECTDIR}/_ext/662348739/sys_int.o ../src/config/pic32mz2048efg144/system/int/src/sys_int.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107057422/sys_reset.o: ../src/config/pic32mz2048efg144/system/reset/sys_reset.c  .generated_files/flags/pic32mz2048efg144/a83d346a943170db8f3db7637c3814118a65faef .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/107057422" 
	@${RM} ${OBJECTDIR}/_ext/107057422/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/107057422/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107057422/sys_reset.o.d" -o ${OBJECTDIR}/_ext/107057422/sys_reset.o ../src/config/pic32mz2048efg144/system/reset/sys_reset.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/initialization.o: ../src/config/pic32mz2048efg144/initialization.c  .generated_files/flags/pic32mz2048efg144/d4a86b203a28c9e9588f67a3738d56adb8886bba .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/initialization.o.d" -o ${OBJECTDIR}/_ext/1317212144/initialization.o ../src/config/pic32mz2048efg144/initialization.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/interrupts.o: ../src/config/pic32mz2048efg144/interrupts.c  .generated_files/flags/pic32mz2048efg144/8383f117290d254a1a1d5ce27cb00a869cad99de .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/interrupts.o.d" -o ${OBJECTDIR}/_ext/1317212144/interrupts.o ../src/config/pic32mz2048efg144/interrupts.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/exceptions.o: ../src/config/pic32mz2048efg144/exceptions.c  .generated_files/flags/pic32mz2048efg144/af461a1e2b28296d4756f16f66469376ba60f401 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/exceptions.o.d" -o ${OBJECTDIR}/_ext/1317212144/exceptions.o ../src/config/pic32mz2048efg144/exceptions.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz2048efg144/d1363d8781419ad3dbaa454f599ccace5103d04c .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz2048efg144/5fb7d052955c0183bd590cae826560e20078fc06 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/cyclictasks.o: ../src/cyclictasks.c  .generated_files/flags/pic32mz2048efg144/b269326b3c8e4a4e281b4c42aa6f765b68c08e31 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ../src/cyclictasks.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/modbus.o: ../src/modbus.c  .generated_files/flags/pic32mz2048efg144/7ea107c189ec0e7e034b51c781aef505114a12a3 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/modbus.o.d" -o ${OBJECTDIR}/_ext/1360937237/modbus.o ../src/modbus.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bootloader.o: ../src/bootloader.c  .generated_files/flags/pic32mz2048efg144/aeef2dc91279056f6a0b9587a63e903c28c6f0e5 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bootloader.o.d" -o ${OBJECTDIR}/_ext/1360937237/bootloader.o ../src/bootloader.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1159154194/plib_clk.o: ../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz2048efg144/413c54c26a42650a9826dbb2400131918f4ea729 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1159154194" 
	@${RM} ${OBJECTDIR}/_ext/1159154194/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159154194/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159154194/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1159154194/plib_clk.o ../src/config/pic32mz2048efg144/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573972417/plib_evic.o: ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz2048efg144/5cbe1b0a41053a281ba3bc9e5b3b445022fdcd0b .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1573972417" 
	@${RM} ${OBJECTDIR}/_ext/1573972417/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573972417/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573972417/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1573972417/plib_evic.o ../src/config/pic32mz2048efg144/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573918589/plib_gpio.o: ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz2048efg144/cc24fcb5b95a8a9e3c6f46add9f604b3c83f508 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1573918589" 
	@${RM} ${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573918589/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573918589/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1573918589/plib_gpio.o ../src/config/pic32mz2048efg144/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159143311/plib_nvm.o: ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz2048efg144/ba790ee53b3f111c6b277a6e7dadd2c44195ddbd .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1159143311" 
	@${RM} ${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159143311/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159143311/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1159143311/plib_nvm.o ../src/config/pic32mz2048efg144/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o: ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz2048efg144/2c62f1c32152c83ea7c18bd100a8494cbe12d92c .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1526010956" 
	@${RM} ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/1526010956/plib_spi1_master.o ../src/config/pic32mz2048efg144/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573533972/plib_tmr1.o: ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mz2048efg144/f8eabf0d7d2f0742ee6f5f69f7e9b2d8316ecc04 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1573533972" 
	@${RM} ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573533972/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/1573533972/plib_tmr1.o ../src/config/pic32mz2048efg144/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1573515646/plib_uart5.o: ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz2048efg144/49db4d2a82cfcce1d3381885f0a64612b12fae9c .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1573515646" 
	@${RM} ${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1573515646/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1573515646/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/1573515646/plib_uart5.o ../src/config/pic32mz2048efg144/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1159135213/plib_wdt.o: ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz2048efg144/9238cbc02a509831bed7f959e8a4426ec488d25 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1159135213" 
	@${RM} ${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1159135213/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1159135213/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/1159135213/plib_wdt.o ../src/config/pic32mz2048efg144/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/556480458/xc32_monitor.o: ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c  .generated_files/flags/pic32mz2048efg144/2514ccf0aa153f12b4823847897e35d027a6e74f .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/556480458" 
	@${RM} ${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/556480458/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/556480458/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/556480458/xc32_monitor.o ../src/config/pic32mz2048efg144/stdio/xc32_monitor.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/662348739/sys_int.o: ../src/config/pic32mz2048efg144/system/int/src/sys_int.c  .generated_files/flags/pic32mz2048efg144/be0cfeda4ce78a233baf2ef776c05b8322b5790 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/662348739" 
	@${RM} ${OBJECTDIR}/_ext/662348739/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/662348739/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/662348739/sys_int.o.d" -o ${OBJECTDIR}/_ext/662348739/sys_int.o ../src/config/pic32mz2048efg144/system/int/src/sys_int.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/107057422/sys_reset.o: ../src/config/pic32mz2048efg144/system/reset/sys_reset.c  .generated_files/flags/pic32mz2048efg144/482b4098a2065d383fc2e9e789ebc247c08115d5 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/107057422" 
	@${RM} ${OBJECTDIR}/_ext/107057422/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/107057422/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/107057422/sys_reset.o.d" -o ${OBJECTDIR}/_ext/107057422/sys_reset.o ../src/config/pic32mz2048efg144/system/reset/sys_reset.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/initialization.o: ../src/config/pic32mz2048efg144/initialization.c  .generated_files/flags/pic32mz2048efg144/8a66e1d0b3f1b808568b37c8ffaafbb2f69c98d7 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/initialization.o.d" -o ${OBJECTDIR}/_ext/1317212144/initialization.o ../src/config/pic32mz2048efg144/initialization.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/interrupts.o: ../src/config/pic32mz2048efg144/interrupts.c  .generated_files/flags/pic32mz2048efg144/5cf75ab03c6d8eeea04d1879ef02ce5fbdc759d1 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/interrupts.o.d" -o ${OBJECTDIR}/_ext/1317212144/interrupts.o ../src/config/pic32mz2048efg144/interrupts.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1317212144/exceptions.o: ../src/config/pic32mz2048efg144/exceptions.c  .generated_files/flags/pic32mz2048efg144/2e17d26bff82de4625c05d51bcca4adcafed38fa .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1317212144" 
	@${RM} ${OBJECTDIR}/_ext/1317212144/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1317212144/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1317212144/exceptions.o.d" -o ${OBJECTDIR}/_ext/1317212144/exceptions.o ../src/config/pic32mz2048efg144/exceptions.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz2048efg144/d8414ee25fadd9839fc3fe2af4abfede35a9a99e .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz2048efg144/96929a6b866ae0691717d58b85674f3c00845ccb .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/cyclictasks.o: ../src/cyclictasks.c  .generated_files/flags/pic32mz2048efg144/20972149d64f9c663b6ee42ea333a4800111bbd5 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ../src/cyclictasks.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/modbus.o: ../src/modbus.c  .generated_files/flags/pic32mz2048efg144/b7724d0e6d4be08f5803058807d5392d8faadfe4 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/modbus.o.d" -o ${OBJECTDIR}/_ext/1360937237/modbus.o ../src/modbus.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bootloader.o: ../src/bootloader.c  .generated_files/flags/pic32mz2048efg144/708a572a9948fdad683ea65e923e4ab8b3a836c8 .generated_files/flags/pic32mz2048efg144/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fno-common -I"../src" -I"../src/config/pic32mz2048efg144" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bootloader.o.d" -o ${OBJECTDIR}/_ext/1360937237/bootloader.o ../src/bootloader.c    -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/btl.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_Rhino_Bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz2048efg144=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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

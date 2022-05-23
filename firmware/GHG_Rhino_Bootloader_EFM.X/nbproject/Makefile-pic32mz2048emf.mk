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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c ../src/config/pic32mz2048emf/stdio/xc32_monitor.c ../src/config/pic32mz2048emf/system/int/src/sys_int.c ../src/config/pic32mz2048emf/system/reset/sys_reset.c ../src/config/pic32mz2048emf/initialization.c ../src/config/pic32mz2048emf/interrupts.c ../src/config/pic32mz2048emf/exceptions.c ../src/main.c ../src/bootloader.c ../src/communication.c ../src/cyclictasks.c ../src/modbus.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/485799749/plib_clk.o ${OBJECTDIR}/_ext/2120007736/plib_evic.o ${OBJECTDIR}/_ext/2119953908/plib_gpio.o ${OBJECTDIR}/_ext/485810632/plib_nvm.o ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o ${OBJECTDIR}/_ext/2119550965/plib_uart5.o ${OBJECTDIR}/_ext/485818730/plib_wdt.o ${OBJECTDIR}/_ext/479398035/xc32_monitor.o ${OBJECTDIR}/_ext/1987664614/sys_int.o ${OBJECTDIR}/_ext/1029438501/sys_reset.o ${OBJECTDIR}/_ext/2011214951/initialization.o ${OBJECTDIR}/_ext/2011214951/interrupts.o ${OBJECTDIR}/_ext/2011214951/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/bootloader.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ${OBJECTDIR}/_ext/1360937237/modbus.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/485799749/plib_clk.o.d ${OBJECTDIR}/_ext/2120007736/plib_evic.o.d ${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d ${OBJECTDIR}/_ext/485810632/plib_nvm.o.d ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d ${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d ${OBJECTDIR}/_ext/485818730/plib_wdt.o.d ${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d ${OBJECTDIR}/_ext/1987664614/sys_int.o.d ${OBJECTDIR}/_ext/1029438501/sys_reset.o.d ${OBJECTDIR}/_ext/2011214951/initialization.o.d ${OBJECTDIR}/_ext/2011214951/interrupts.o.d ${OBJECTDIR}/_ext/2011214951/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/bootloader.o.d ${OBJECTDIR}/_ext/1360937237/communication.o.d ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d ${OBJECTDIR}/_ext/1360937237/modbus.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/485799749/plib_clk.o ${OBJECTDIR}/_ext/2120007736/plib_evic.o ${OBJECTDIR}/_ext/2119953908/plib_gpio.o ${OBJECTDIR}/_ext/485810632/plib_nvm.o ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o ${OBJECTDIR}/_ext/2119550965/plib_uart5.o ${OBJECTDIR}/_ext/485818730/plib_wdt.o ${OBJECTDIR}/_ext/479398035/xc32_monitor.o ${OBJECTDIR}/_ext/1987664614/sys_int.o ${OBJECTDIR}/_ext/1029438501/sys_reset.o ${OBJECTDIR}/_ext/2011214951/initialization.o ${OBJECTDIR}/_ext/2011214951/interrupts.o ${OBJECTDIR}/_ext/2011214951/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/bootloader.o ${OBJECTDIR}/_ext/1360937237/communication.o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ${OBJECTDIR}/_ext/1360937237/modbus.o

# Source Files
SOURCEFILES=../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c ../src/config/pic32mz2048emf/stdio/xc32_monitor.c ../src/config/pic32mz2048emf/system/int/src/sys_int.c ../src/config/pic32mz2048emf/system/reset/sys_reset.c ../src/config/pic32mz2048emf/initialization.c ../src/config/pic32mz2048emf/interrupts.c ../src/config/pic32mz2048emf/exceptions.c ../src/main.c ../src/bootloader.c ../src/communication.c ../src/cyclictasks.c ../src/modbus.c



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
${OBJECTDIR}/_ext/485799749/plib_clk.o: ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz2048emf/caadb74d5ab5d583f68c2875cbed7eb74f0eec64 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/485799749" 
	@${RM} ${OBJECTDIR}/_ext/485799749/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/485799749/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485799749/plib_clk.o.d" -o ${OBJECTDIR}/_ext/485799749/plib_clk.o ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120007736/plib_evic.o: ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz2048emf/b2f0a11722e5f455b3847061b791d1582c6f4abc .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2120007736" 
	@${RM} ${OBJECTDIR}/_ext/2120007736/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120007736/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120007736/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2120007736/plib_evic.o ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119953908/plib_gpio.o: ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz2048emf/bbbff890687ac4b443237806654dcd6f9ceb16ae .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2119953908" 
	@${RM} ${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119953908/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2119953908/plib_gpio.o ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485810632/plib_nvm.o: ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz2048emf/fdaf1d292e8d10979542a776344b9df4e6891737 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/485810632" 
	@${RM} ${OBJECTDIR}/_ext/485810632/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/485810632/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485810632/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/485810632/plib_nvm.o ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/932338027/plib_spi1_master.o: ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz2048emf/a5c15e57941ee73f151aff1c6544e149c34b0a2d .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/932338027" 
	@${RM} ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119569291/plib_tmr1.o: ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mz2048emf/1e0215bfc78cef03b4a5d1cf2b1a9befb1f399b0 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2119569291" 
	@${RM} ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119550965/plib_uart5.o: ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz2048emf/388b916b4cb5f016c6ba7e0e1437e362e7f7891 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2119550965" 
	@${RM} ${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119550965/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/2119550965/plib_uart5.o ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485818730/plib_wdt.o: ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz2048emf/fc50e99b3c1f333bdef25c8dc824b4c454df4114 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/485818730" 
	@${RM} ${OBJECTDIR}/_ext/485818730/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/485818730/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485818730/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/485818730/plib_wdt.o ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/479398035/xc32_monitor.o: ../src/config/pic32mz2048emf/stdio/xc32_monitor.c  .generated_files/flags/pic32mz2048emf/a2565332fb408cb05488b3c3e9b9fbfb9efbc96a .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/479398035" 
	@${RM} ${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/479398035/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/479398035/xc32_monitor.o ../src/config/pic32mz2048emf/stdio/xc32_monitor.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1987664614/sys_int.o: ../src/config/pic32mz2048emf/system/int/src/sys_int.c  .generated_files/flags/pic32mz2048emf/b4b5c509f867e6c567ab43d7eca14355d5b78b1 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1987664614" 
	@${RM} ${OBJECTDIR}/_ext/1987664614/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987664614/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987664614/sys_int.o.d" -o ${OBJECTDIR}/_ext/1987664614/sys_int.o ../src/config/pic32mz2048emf/system/int/src/sys_int.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029438501/sys_reset.o: ../src/config/pic32mz2048emf/system/reset/sys_reset.c  .generated_files/flags/pic32mz2048emf/d59b952ec99357ed1ebc9d0133a7b15a94b108fa .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1029438501" 
	@${RM} ${OBJECTDIR}/_ext/1029438501/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029438501/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029438501/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1029438501/sys_reset.o ../src/config/pic32mz2048emf/system/reset/sys_reset.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/initialization.o: ../src/config/pic32mz2048emf/initialization.c  .generated_files/flags/pic32mz2048emf/30598242cb84317db083cf2a811f8abefbe5071 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/initialization.o.d" -o ${OBJECTDIR}/_ext/2011214951/initialization.o ../src/config/pic32mz2048emf/initialization.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/interrupts.o: ../src/config/pic32mz2048emf/interrupts.c  .generated_files/flags/pic32mz2048emf/fc7aa213272d7d8652daa047cddb79748f1e4f20 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/interrupts.o.d" -o ${OBJECTDIR}/_ext/2011214951/interrupts.o ../src/config/pic32mz2048emf/interrupts.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/exceptions.o: ../src/config/pic32mz2048emf/exceptions.c  .generated_files/flags/pic32mz2048emf/8cbb6d20cab77725f0f2d0d4c2c86761c895ab76 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/exceptions.o.d" -o ${OBJECTDIR}/_ext/2011214951/exceptions.o ../src/config/pic32mz2048emf/exceptions.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz2048emf/a30dbc1e492b62800ee1731c1cb6297f888f5205 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bootloader.o: ../src/bootloader.c  .generated_files/flags/pic32mz2048emf/2130176df81c37bf1519507ef8d41929316000e9 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bootloader.o.d" -o ${OBJECTDIR}/_ext/1360937237/bootloader.o ../src/bootloader.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz2048emf/77b414693c21d3ebd087adf6e0498f6239c4bd50 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/cyclictasks.o: ../src/cyclictasks.c  .generated_files/flags/pic32mz2048emf/30a850ff3e5520079a1cac2b046b7b84082a384f .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ../src/cyclictasks.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/modbus.o: ../src/modbus.c  .generated_files/flags/pic32mz2048emf/570c4f1b0a26c32fc47d2126260ce642dc2b4b36 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/modbus.o.d" -o ${OBJECTDIR}/_ext/1360937237/modbus.o ../src/modbus.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/485799749/plib_clk.o: ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mz2048emf/f18388446d4f2285a69f88c7c6962f05647570e1 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/485799749" 
	@${RM} ${OBJECTDIR}/_ext/485799749/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/485799749/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485799749/plib_clk.o.d" -o ${OBJECTDIR}/_ext/485799749/plib_clk.o ../src/config/pic32mz2048emf/peripheral/clk/plib_clk.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2120007736/plib_evic.o: ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mz2048emf/70bc8d7bb27125c3fa7fef6c6d29bb89ceb8a2de .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2120007736" 
	@${RM} ${OBJECTDIR}/_ext/2120007736/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/2120007736/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2120007736/plib_evic.o.d" -o ${OBJECTDIR}/_ext/2120007736/plib_evic.o ../src/config/pic32mz2048emf/peripheral/evic/plib_evic.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119953908/plib_gpio.o: ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mz2048emf/e23a3a57f5a98a12b256d512012fd365aec08a .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2119953908" 
	@${RM} ${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119953908/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119953908/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/2119953908/plib_gpio.o ../src/config/pic32mz2048emf/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485810632/plib_nvm.o: ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mz2048emf/902f6acb92833daff1460f4c40a4b978db5f9de7 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/485810632" 
	@${RM} ${OBJECTDIR}/_ext/485810632/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/485810632/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485810632/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/485810632/plib_nvm.o ../src/config/pic32mz2048emf/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/932338027/plib_spi1_master.o: ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mz2048emf/538792d3aeb8f97ae16b876f8bef0ae46b8433b0 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/932338027" 
	@${RM} ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/932338027/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/932338027/plib_spi1_master.o ../src/config/pic32mz2048emf/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119569291/plib_tmr1.o: ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c  .generated_files/flags/pic32mz2048emf/19d7c32222a839fe6e511e065a516d3bb18ab52a .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2119569291" 
	@${RM} ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119569291/plib_tmr1.o.d" -o ${OBJECTDIR}/_ext/2119569291/plib_tmr1.o ../src/config/pic32mz2048emf/peripheral/tmr1/plib_tmr1.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2119550965/plib_uart5.o: ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c  .generated_files/flags/pic32mz2048emf/a79744f18a403012200720dbbb1c5f38e774d674 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2119550965" 
	@${RM} ${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d 
	@${RM} ${OBJECTDIR}/_ext/2119550965/plib_uart5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2119550965/plib_uart5.o.d" -o ${OBJECTDIR}/_ext/2119550965/plib_uart5.o ../src/config/pic32mz2048emf/peripheral/uart/plib_uart5.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/485818730/plib_wdt.o: ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c  .generated_files/flags/pic32mz2048emf/2a1ce346fcc648cef89f4caf0b71134f0699fccf .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/485818730" 
	@${RM} ${OBJECTDIR}/_ext/485818730/plib_wdt.o.d 
	@${RM} ${OBJECTDIR}/_ext/485818730/plib_wdt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/485818730/plib_wdt.o.d" -o ${OBJECTDIR}/_ext/485818730/plib_wdt.o ../src/config/pic32mz2048emf/peripheral/wdt/plib_wdt.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/479398035/xc32_monitor.o: ../src/config/pic32mz2048emf/stdio/xc32_monitor.c  .generated_files/flags/pic32mz2048emf/236b266167e7beab7a30918180f2dd8edd3183a1 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/479398035" 
	@${RM} ${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/479398035/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/479398035/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/479398035/xc32_monitor.o ../src/config/pic32mz2048emf/stdio/xc32_monitor.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1987664614/sys_int.o: ../src/config/pic32mz2048emf/system/int/src/sys_int.c  .generated_files/flags/pic32mz2048emf/e3dee7ceac2127d1ab178ea0d1233d66e4446063 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1987664614" 
	@${RM} ${OBJECTDIR}/_ext/1987664614/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1987664614/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1987664614/sys_int.o.d" -o ${OBJECTDIR}/_ext/1987664614/sys_int.o ../src/config/pic32mz2048emf/system/int/src/sys_int.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1029438501/sys_reset.o: ../src/config/pic32mz2048emf/system/reset/sys_reset.c  .generated_files/flags/pic32mz2048emf/33b38f6b965e0cbc1b729ed4f40ffaab7ee749b1 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1029438501" 
	@${RM} ${OBJECTDIR}/_ext/1029438501/sys_reset.o.d 
	@${RM} ${OBJECTDIR}/_ext/1029438501/sys_reset.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1029438501/sys_reset.o.d" -o ${OBJECTDIR}/_ext/1029438501/sys_reset.o ../src/config/pic32mz2048emf/system/reset/sys_reset.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/initialization.o: ../src/config/pic32mz2048emf/initialization.c  .generated_files/flags/pic32mz2048emf/1ce8bbb3b75428cb014e14f81d7ea5f33e7b4d6d .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/initialization.o.d" -o ${OBJECTDIR}/_ext/2011214951/initialization.o ../src/config/pic32mz2048emf/initialization.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/interrupts.o: ../src/config/pic32mz2048emf/interrupts.c  .generated_files/flags/pic32mz2048emf/fe6b23595ef7521c3e0a6a840ed4a8fd782b2ae5 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/interrupts.o.d" -o ${OBJECTDIR}/_ext/2011214951/interrupts.o ../src/config/pic32mz2048emf/interrupts.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2011214951/exceptions.o: ../src/config/pic32mz2048emf/exceptions.c  .generated_files/flags/pic32mz2048emf/abeecf519cdb3444a417695f10a1e980c866f7fe .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/2011214951" 
	@${RM} ${OBJECTDIR}/_ext/2011214951/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/2011214951/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2011214951/exceptions.o.d" -o ${OBJECTDIR}/_ext/2011214951/exceptions.o ../src/config/pic32mz2048emf/exceptions.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mz2048emf/f33404b46f6c2e3d9bf9f0fed8d9bd1643248b98 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/bootloader.o: ../src/bootloader.c  .generated_files/flags/pic32mz2048emf/44ed155c0c9953cbb5be33be8e6d43a104ee220f .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/bootloader.o.d" -o ${OBJECTDIR}/_ext/1360937237/bootloader.o ../src/bootloader.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/communication.o: ../src/communication.c  .generated_files/flags/pic32mz2048emf/77274bb310ca0d5383bdc685162554b0ae02fd55 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/communication.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/communication.o.d" -o ${OBJECTDIR}/_ext/1360937237/communication.o ../src/communication.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/cyclictasks.o: ../src/cyclictasks.c  .generated_files/flags/pic32mz2048emf/1bd70d42b47b1841b1f9ab69af48356fd714e714 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/cyclictasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/cyclictasks.o.d" -o ${OBJECTDIR}/_ext/1360937237/cyclictasks.o ../src/cyclictasks.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/modbus.o: ../src/modbus.c  .generated_files/flags/pic32mz2048emf/6f609cf6cc4ad064d26d17e9afa173290a3cce9 .generated_files/flags/pic32mz2048emf/a772a419b5c5386499c8d88855fa31256a2fb3a6
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/modbus.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/pic32mz2048emf" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/modbus.o.d" -o ${OBJECTDIR}/_ext/1360937237/modbus.o ../src/modbus.c    -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x37F   -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/btl.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/GHG_Rhino_Bootloader_EFM.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mz2048emf=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

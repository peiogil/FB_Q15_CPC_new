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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FLYBACK_Q15_CPC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FLYBACK_Q15_CPC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=src/init_FB_Q15_CPC.c src/main_Q15_CPC.c src/pid_TIPO_II_FB_Q0_15_CPC.s src/isr_Q15_CPC.c src/isr_asm_Q15_FB_CPC.s

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/src/init_FB_Q15_CPC.o ${OBJECTDIR}/src/main_Q15_CPC.o ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o ${OBJECTDIR}/src/isr_Q15_CPC.o ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o
POSSIBLE_DEPFILES=${OBJECTDIR}/src/init_FB_Q15_CPC.o.d ${OBJECTDIR}/src/main_Q15_CPC.o.d ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o.d ${OBJECTDIR}/src/isr_Q15_CPC.o.d ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/src/init_FB_Q15_CPC.o ${OBJECTDIR}/src/main_Q15_CPC.o ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o ${OBJECTDIR}/src/isr_Q15_CPC.o ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o

# Source Files
SOURCEFILES=src/init_FB_Q15_CPC.c src/main_Q15_CPC.c src/pid_TIPO_II_FB_Q0_15_CPC.s src/isr_Q15_CPC.c src/isr_asm_Q15_FB_CPC.s


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/FLYBACK_Q15_CPC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=33FJ16GS502
MP_LINKER_FILE_OPTION=,--script=p33FJ16GS502.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/init_FB_Q15_CPC.o: src/init_FB_Q15_CPC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/init_FB_Q15_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/init_FB_Q15_CPC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/init_FB_Q15_CPC.c  -o ${OBJECTDIR}/src/init_FB_Q15_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/init_FB_Q15_CPC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"h" -I"inc" -I"C:/Program Files (x86)/Microchip/MPLABC30/v3.31/include" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/init_FB_Q15_CPC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/main_Q15_CPC.o: src/main_Q15_CPC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main_Q15_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/main_Q15_CPC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main_Q15_CPC.c  -o ${OBJECTDIR}/src/main_Q15_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main_Q15_CPC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"h" -I"inc" -I"C:/Program Files (x86)/Microchip/MPLABC30/v3.31/include" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/main_Q15_CPC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/isr_Q15_CPC.o: src/isr_Q15_CPC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/isr_Q15_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/isr_Q15_CPC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/isr_Q15_CPC.c  -o ${OBJECTDIR}/src/isr_Q15_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/isr_Q15_CPC.o.d"      -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1    -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"h" -I"inc" -I"C:/Program Files (x86)/Microchip/MPLABC30/v3.31/include" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/isr_Q15_CPC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/src/init_FB_Q15_CPC.o: src/init_FB_Q15_CPC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/init_FB_Q15_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/init_FB_Q15_CPC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/init_FB_Q15_CPC.c  -o ${OBJECTDIR}/src/init_FB_Q15_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/init_FB_Q15_CPC.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"h" -I"inc" -I"C:/Program Files (x86)/Microchip/MPLABC30/v3.31/include" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/init_FB_Q15_CPC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/main_Q15_CPC.o: src/main_Q15_CPC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/main_Q15_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/main_Q15_CPC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/main_Q15_CPC.c  -o ${OBJECTDIR}/src/main_Q15_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/main_Q15_CPC.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"h" -I"inc" -I"C:/Program Files (x86)/Microchip/MPLABC30/v3.31/include" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/main_Q15_CPC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/src/isr_Q15_CPC.o: src/isr_Q15_CPC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/isr_Q15_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/isr_Q15_CPC.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  src/isr_Q15_CPC.c  -o ${OBJECTDIR}/src/isr_Q15_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/src/isr_Q15_CPC.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -O0 -I"h" -I"inc" -I"C:/Program Files (x86)/Microchip/MPLABC30/v3.31/include" -msmart-io=1 -msfr-warn=off  
	@${FIXDEPS} "${OBJECTDIR}/src/isr_Q15_CPC.o.d" $(SILENT)  -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o: src/pid_TIPO_II_FB_Q0_15_CPC.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  src/pid_TIPO_II_FB_Q0_15_CPC.s  -o ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"h" -I"inc" -Wa,-MD,"${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o: src/isr_asm_Q15_FB_CPC.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  src/isr_asm_Q15_FB_CPC.s  -o ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -D__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"h" -I"inc" -Wa,-MD,"${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o.d",--defsym=__MPLAB_BUILD=1,--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_ICD3=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o: src/pid_TIPO_II_FB_Q0_15_CPC.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  src/pid_TIPO_II_FB_Q0_15_CPC.s  -o ${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"h" -I"inc" -Wa,-MD,"${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/src/pid_TIPO_II_FB_Q0_15_CPC.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o: src/isr_asm_Q15_FB_CPC.s  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/src" 
	@${RM} ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o.d 
	@${RM} ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o 
	${MP_CC} $(MP_EXTRA_AS_PRE)  src/isr_asm_Q15_FB_CPC.s  -o ${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -I"h" -I"inc" -Wa,-MD,"${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o.d",--defsym=__MPLAB_BUILD=1,-g,--no-relax$(MP_EXTRA_AS_POST)
	@${FIXDEPS} "${OBJECTDIR}/src/isr_asm_Q15_FB_CPC.o.d"  $(SILENT)  -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FLYBACK_Q15_CPC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FLYBACK_Q15_CPC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG -D__MPLAB_DEBUGGER_ICD3=1  -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,--defsym=__MPLAB_DEBUGGER_ICD3=1,$(MP_LINKER_FILE_OPTION),--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="h",--library-path="C:/Archivos de programa/Microchip/MPLAB C30/lib",--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FLYBACK_Q15_CPC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o dist/${CND_CONF}/${IMAGE_TYPE}/FLYBACK_Q15_CPC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="h",--library-path="C:/Archivos de programa/Microchip/MPLAB C30/lib",--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml$(MP_EXTRA_LD_POST) 
	${MP_CC_DIR}\\xc16-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/FLYBACK_Q15_CPC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf  
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

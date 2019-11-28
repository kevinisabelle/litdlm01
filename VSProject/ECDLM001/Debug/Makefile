################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL := cmd.exe
RM := rm -rf

USER_OBJS :=

LIBS := 
PROJ := 

O_SRCS := 
C_SRCS := 
S_SRCS := 
S_UPPER_SRCS := 
OBJ_SRCS := 
ASM_SRCS := 
PREPROCESSING_SRCS := 
OBJS := 
OBJS_AS_ARGS := 
C_DEPS := 
C_DEPS_AS_ARGS := 
EXECUTABLES := 
OUTPUT_FILE_PATH :=
OUTPUT_FILE_PATH_AS_ARGS :=
AVR_APP_PATH :=$$$AVR_APP_PATH$$$
QUOTE := "
ADDITIONAL_DEPENDENCIES:=
OUTPUT_FILE_DEP:=
LIB_DEP:=
LINKER_SCRIPT_DEP:=

# Every subdirectory with source files must be described here
SUBDIRS :=  \
../src/ \
../src/ASF/ \
../src/ASF/common/ \
../src/ASF/common/boards/ \
../src/ASF/common/boards/user_board/ \
../src/ASF/common/components/ \
../src/ASF/common/components/memory/ \
../src/ASF/common/services/ \
../src/ASF/common/services/clock/ \
../src/ASF/common/services/clock/xmega/ \
../src/ASF/common/utils/ \
../src/ASF/common/utils/interrupt/ \
../src/ASF/common/utils/make/ \
../src/ASF/xmega/ \
../src/ASF/xmega/drivers/ \
../src/ASF/xmega/drivers/cpu/ \
../src/ASF/xmega/drivers/nvm/ \
../src/ASF/xmega/drivers/pmic/ \
../src/ASF/xmega/utils/ \
../src/ASF/xmega/utils/assembler/ \
../src/ASF/xmega/utils/bit_handling/ \
../src/ASF/xmega/utils/preprocessor/ \
../src/config/


# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS +=  \
../src/appbl.c \
../src/ASF/common/boards/user_board/init.c \
../src/i2c.c \
../src/i2c_lcd.c \
../src/main.c \
../src/menu.c \
../src/ws2812b.c \
../src/ASF/xmega/drivers/nvm/nvm.c


PREPROCESSING_SRCS +=  \
../src/ASF/xmega/drivers/nvm/nvm_asm.s \
../src/ASF/xmega/drivers/cpu/ccp.s


ASM_SRCS += 


OBJS +=  \
src/appbl.o \
src/ASF/common/boards/user_board/init.o \
src/i2c.o \
src/i2c_lcd.o \
src/main.o \
src/menu.o \
src/ws2812b.o \
src/ASF/xmega/drivers/nvm/nvm.o \
src/ASF/xmega/drivers/nvm/nvm_asm.o \
src/ASF/xmega/drivers/cpu/ccp.o

OBJS_AS_ARGS +=  \
src/appbl.o \
src/ASF/common/boards/user_board/init.o \
src/i2c.o \
src/i2c_lcd.o \
src/main.o \
src/menu.o \
src/ws2812b.o \
src/ASF/xmega/drivers/nvm/nvm.o \
src/ASF/xmega/drivers/nvm/nvm_asm.o \
src/ASF/xmega/drivers/cpu/ccp.o

C_DEPS +=  \
src/appbl.d \
src/ASF/common/boards/user_board/init.d \
src/i2c.d \
src/i2c_lcd.d \
src/main.d \
src/menu.d \
src/ws2812b.d \
src/ASF/xmega/drivers/nvm/nvm.d \
src/ASF/xmega/drivers/nvm/nvm_asm.d \
src/ASF/xmega/drivers/cpu/ccp.d

C_DEPS_AS_ARGS +=  \
src/appbl.d \
src/ASF/common/boards/user_board/init.d \
src/i2c.d \
src/i2c_lcd.d \
src/main.d \
src/menu.d \
src/ws2812b.d \
src/ASF/xmega/drivers/nvm/nvm.d \
src/ASF/xmega/drivers/nvm/nvm_asm.d \
src/ASF/xmega/drivers/cpu/ccp.d

OUTPUT_FILE_PATH +=ECDLM001_V7.elf

OUTPUT_FILE_PATH_AS_ARGS +=ECDLM001_V7.elf

ADDITIONAL_DEPENDENCIES:=

OUTPUT_FILE_DEP:= ./makedep.mk

LIB_DEP+= 

LINKER_SCRIPT_DEP+= 


# AVR32/GNU C Compiler
src/appbl.o: ../src/appbl.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -DDEBUG -DBOARD=USER_BOARD  -I"../src/ASF/xmega/drivers/cpu" -I"../src/ASF/xmega/drivers/nvm" -I"../src/ASF/common/boards/user_board" -I"../src/ASF/xmega/utils/preprocessor" -I"../src/ASF/xmega/utils" -I"../src/ASF/common/utils" -I"../src" -I"../src/config" -I"K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -O1 -fdata-sections -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g3 -Wall -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -c -std=gnu99 -fno-strict-aliasing -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -mrelax -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	

src/ASF/common/boards/user_board/init.o: ../src/ASF/common/boards/user_board/init.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -DDEBUG -DBOARD=USER_BOARD  -I"../src/ASF/xmega/drivers/cpu" -I"../src/ASF/xmega/drivers/nvm" -I"../src/ASF/common/boards/user_board" -I"../src/ASF/xmega/utils/preprocessor" -I"../src/ASF/xmega/utils" -I"../src/ASF/common/utils" -I"../src" -I"../src/config" -I"K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -O1 -fdata-sections -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g3 -Wall -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -c -std=gnu99 -fno-strict-aliasing -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -mrelax -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	

src/i2c.o: ../src/i2c.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -DDEBUG -DBOARD=USER_BOARD  -I"../src/ASF/xmega/drivers/cpu" -I"../src/ASF/xmega/drivers/nvm" -I"../src/ASF/common/boards/user_board" -I"../src/ASF/xmega/utils/preprocessor" -I"../src/ASF/xmega/utils" -I"../src/ASF/common/utils" -I"../src" -I"../src/config" -I"K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -O1 -fdata-sections -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g3 -Wall -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -c -std=gnu99 -fno-strict-aliasing -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -mrelax -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	

src/i2c_lcd.o: ../src/i2c_lcd.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -DDEBUG -DBOARD=USER_BOARD  -I"../src/ASF/xmega/drivers/cpu" -I"../src/ASF/xmega/drivers/nvm" -I"../src/ASF/common/boards/user_board" -I"../src/ASF/xmega/utils/preprocessor" -I"../src/ASF/xmega/utils" -I"../src/ASF/common/utils" -I"../src" -I"../src/config" -I"K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -O1 -fdata-sections -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g3 -Wall -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -c -std=gnu99 -fno-strict-aliasing -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -mrelax -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	

src/main.o: ../src/main.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -DDEBUG -DBOARD=USER_BOARD  -I"../src/ASF/xmega/drivers/cpu" -I"../src/ASF/xmega/drivers/nvm" -I"../src/ASF/common/boards/user_board" -I"../src/ASF/xmega/utils/preprocessor" -I"../src/ASF/xmega/utils" -I"../src/ASF/common/utils" -I"../src" -I"../src/config" -I"K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -O1 -fdata-sections -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g3 -Wall -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -c -std=gnu99 -fno-strict-aliasing -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -mrelax -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	

src/menu.o: ../src/menu.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -DDEBUG -DBOARD=USER_BOARD  -I"../src/ASF/xmega/drivers/cpu" -I"../src/ASF/xmega/drivers/nvm" -I"../src/ASF/common/boards/user_board" -I"../src/ASF/xmega/utils/preprocessor" -I"../src/ASF/xmega/utils" -I"../src/ASF/common/utils" -I"../src" -I"../src/config" -I"K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -O1 -fdata-sections -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g3 -Wall -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -c -std=gnu99 -fno-strict-aliasing -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -mrelax -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	

src/ws2812b.o: ../src/ws2812b.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -DDEBUG -DBOARD=USER_BOARD  -I"../src/ASF/xmega/drivers/cpu" -I"../src/ASF/xmega/drivers/nvm" -I"../src/ASF/common/boards/user_board" -I"../src/ASF/xmega/utils/preprocessor" -I"../src/ASF/xmega/utils" -I"../src/ASF/common/utils" -I"../src" -I"../src/config" -I"K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -O1 -fdata-sections -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g3 -Wall -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -c -std=gnu99 -fno-strict-aliasing -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -mrelax -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	

src/ASF/xmega/drivers/nvm/nvm.o: ../src/ASF/xmega/drivers/nvm/nvm.c
	@echo Building file: $<
	@echo Invoking: AVR/GNU C Compiler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE)  -x c -DDEBUG -DBOARD=USER_BOARD  -I"../src/ASF/xmega/drivers/cpu" -I"../src/ASF/xmega/drivers/nvm" -I"../src/ASF/common/boards/user_board" -I"../src/ASF/xmega/utils/preprocessor" -I"../src/ASF/xmega/utils" -I"../src/ASF/common/utils" -I"../src" -I"../src/config" -I"K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -O1 -fdata-sections -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g3 -Wall -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -c -std=gnu99 -fno-strict-aliasing -Wstrict-prototypes -Wmissing-prototypes -Werror-implicit-function-declaration -Wpointer-arith -mrelax -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)"   -o "$@" "$<" 
	@echo Finished building: $<
	




# AVR32/GNU Preprocessing Assembler



# AVR32/GNU Assembler
src/ASF/xmega/drivers/nvm/nvm_asm.o: ../src/ASF/xmega/drivers/nvm/nvm_asm.s
	@echo Building file: $<
	@echo Invoking: AVR/GNU Assembler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE) -Wa,-gdwarf2 -x assembler-with-cpp -c -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -mrelax -DBOARD=USER_BOARD -I "../src/ASF/xmega/drivers/cpu" -I "../src/ASF/xmega/drivers/nvm" -I "../src/ASF/common/boards/user_board" -I "../src/ASF/xmega/utils/preprocessor" -I "../src/ASF/xmega/utils" -I "../src/ASF/common/utils" -I "../src" -I "../src/config" -I "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -Wa,-g   -o "$@" "$<" 
	@echo Finished building: $<
	

src/ASF/xmega/drivers/cpu/ccp.o: ../src/ASF/xmega/drivers/cpu/ccp.s
	@echo Building file: $<
	@echo Invoking: AVR/GNU Assembler : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE) -Wa,-gdwarf2 -x assembler-with-cpp -c -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -mrelax -DBOARD=USER_BOARD -I "../src/ASF/xmega/drivers/cpu" -I "../src/ASF/xmega/drivers/nvm" -I "../src/ASF/common/boards/user_board" -I "../src/ASF/xmega/utils/preprocessor" -I "../src/ASF/xmega/utils" -I "../src/ASF/common/utils" -I "../src" -I "../src/config" -I "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include"  -MD -MP -MF "$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -MT"$(@:%.o=%.o)" -Wa,-g   -o "$@" "$<" 
	@echo Finished building: $<
	





ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: $(OUTPUT_FILE_PATH) $(ADDITIONAL_DEPENDENCIES)

$(OUTPUT_FILE_PATH): $(OBJS) $(USER_OBJS) $(OUTPUT_FILE_DEP) $(LIB_DEP) $(LINKER_SCRIPT_DEP)
	@echo Building target: $@
	@echo Invoking: AVR/GNU Linker : 5.4.0
	$(QUOTE)K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe$(QUOTE) -o$(OUTPUT_FILE_PATH_AS_ARGS) $(OBJS_AS_ARGS) $(USER_OBJS) $(LIBS) -Wl,-Map="ECDLM001_V7.map" -Wl,--start-group -Wl,-lm  -Wl,--end-group -Wl,--gc-sections -mmcu=atxmega192a3u -B "K:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega192a3u" -Wl,--relax  
	@echo Finished building target: $@
	"K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -O ihex -R .eeprom -R .fuse -R .lock -R .signature -R .user_signatures  "ECDLM001_V7.elf" "ECDLM001_V7.hex"
	"K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -j .eeprom  --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0  --no-change-warnings -O ihex "ECDLM001_V7.elf" "ECDLM001_V7.eep" || exit 0
	"K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objdump.exe" -h -S "ECDLM001_V7.elf" > "ECDLM001_V7.lss"
	"K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -O srec -R .eeprom -R .fuse -R .lock -R .signature -R .user_signatures "ECDLM001_V7.elf" "ECDLM001_V7.srec"
	"K:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-size.exe" "ECDLM001_V7.elf"
	
	





# Other Targets
clean:
	-$(RM) $(OBJS_AS_ARGS) $(EXECUTABLES)  
	-$(RM) $(C_DEPS_AS_ARGS)   
	rm -rf "ECDLM001_V7.elf" "ECDLM001_V7.a" "ECDLM001_V7.hex" "ECDLM001_V7.lss" "ECDLM001_V7.eep" "ECDLM001_V7.map" "ECDLM001_V7.srec" "ECDLM001_V7.usersignatures"
	
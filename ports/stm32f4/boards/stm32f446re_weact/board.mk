CFLAGS += \
  -DSTM32F446xx \
  -DHSE_VALUE=8000000U

SRC_S += \
  $(ST_CMSIS)/Source/Templates/gcc/startup_stm32f446xx.s

# For flash-jlink target
JLINK_DEVICE = stm32f446re

flash: flash-dfu-util
erase: erase-jlink

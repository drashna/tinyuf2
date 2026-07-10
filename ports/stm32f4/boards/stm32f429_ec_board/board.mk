CFLAGS += \
  -Wno-error=unterminated-string-initialization \
  -DSTM32F429xx \
  -DHSE_VALUE=25000000U \
  -DBOARD_TUD_RHPORT=1

SRC_C += \
  $(ST_HAL_DRIVER)/Src/stm32f4xx_hal_rcc_ex.c

SRC_S += \
  $(ST_CMSIS)/Source/Templates/gcc/startup_stm32f429xx.s

# For flash-jlink target
JLINK_DEVICE = stm32f429ig

flash: flash-dfu-util
erase: erase-dfu-util

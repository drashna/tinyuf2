set(JLINK_DEVICE stm32f405rg)

function(update_board TARGET)
  target_sources(${TARGET} PUBLIC
    ${ST_CMSIS}/Source/Templates/gcc/startup_stm32f405xx.s
    )
  target_compile_definitions(${TARGET} PUBLIC
    STM32F405xx
    HSE_VALUE=8000000U
    BOARD_TUD_RHPORT=1
    )
endfunction()

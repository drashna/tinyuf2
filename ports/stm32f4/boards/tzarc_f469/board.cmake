set(JLINK_DEVICE stm32f469ig)

function(update_board TARGET)
  target_sources(${TARGET} PUBLIC
    ${ST_CMSIS}/Source/Templates/gcc/startup_stm32f469xx.s
    )
  target_compile_definitions(${TARGET} PUBLIC
    STM32F469xx
    HSE_VALUE=8000000U
    )
endfunction()

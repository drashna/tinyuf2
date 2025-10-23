set(JLINK_DEVICE stm32f42n9ig)

function(update_board TARGET)
  target_sources(${TARGET} PUBLIC
    ${ST_CMSIS}/Source/Templates/gcc/startup_stm32f429xx.s
    )
  target_compile_definitions(${TARGET} PUBLIC
    STM32F429xx
    HSE_VALUE=8000000U
    )
endfunction()

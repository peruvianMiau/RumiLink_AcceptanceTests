Feature: Visualización de estadísticas comparativas
  Como ganadero
  Quiero comparar mis estadísticas productivas actuales con las de meses anteriores
  Para identificar mejoras o problemas en la gestión de mi ganado

  Scenario: Mostrar gráficos comparativos por rango temporal
    Given el usuario ingresa al panel de estadísticas
    When selecciona el rango temporal de comparación
    Then el sistema muestra gráficos comparativos de los indicadores clave

  Scenario: Actualizar gráficos según filtros aplicados
    Given el usuario ha registrado múltiples lotes de animales
    When aplica filtros por periodo o tipo de animal
    Then el sistema actualiza dinámicamente los gráficos
    And muestra un resumen comparativo del rendimiento por lote
    And resalta las variaciones más significativas
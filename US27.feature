Feature: Panel de comparación de Ganaderos por calidad
  Como comprador formal
  Quiero comparar dos perfiles de ganaderos
  Para evaluar su calidad sanitaria y formalidad antes de comprar.

  Scenario: Comparación entre dos ganaderos con datos completos
    Given que el usuario seleccionó a “Ganadero A” y “Ganadero B”
    When presiona el botón "Comparación"
    Then el sistema muestra una tabla comparativa
    And la tabla incluye peso promedio del rebaño, certificaciones activas e historial de trazabilidad
    And el sistema resalta al ganadero con mejor índice de cumplimiento.

  Scenario: Comparación con datos desactualizados
    Given que uno de los ganaderos no actualiza su registro hace 90 días
    When se genera la comparación
    Then la tabla se muestra normalmente
    And el sistema indica en la celda correspondiente la etiqueta "Dato desactualizado".
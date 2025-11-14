Feature: Comparativa de proveedores
  Como comprador formal
  Quiero comparar varios ganaderos según historial sanitario y reputación
  Para elegir el más confiable

  Scenario: Comparar dos o más ganaderos
    Given que selecciono dos o más ganaderos
    When ingreso a la opción de comparación
    Then el sistema muestra un cuadro comparativo con registros, certificados y volumen disponible

  Scenario: Intentar comparar solo un ganadero
    Given que selecciono un solo ganadero
    When ingreso a la opción de comparación
    Then el sistema muestra el mensaje "Seleccione al menos dos ganaderos para comparar"
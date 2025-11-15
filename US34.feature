Feature: Comparar reputación y formalización de proveedores
Como comprador formal
Quiero comparar el nivel de reputación y formalización de distintos ganaderos
Para identificar cuáles ofrecen mayor confianza y cumplimiento de estándares

Scenario: Comparación válida entre dos o más ganaderos
    Given que el usuario ha seleccionado dos o más ganaderos desde el catálogo
    When el usuario ingresa a la opción de comparación
    Then el sistema muestra una tabla comparativa con indicadores como certificaciones vigentes, cumplimiento sanitario y años de experiencia
    And el sistema permite visualizar un resumen gráfico de la comparación

Scenario: Error al intentar comparar un solo proveedor
    Given que el usuario ha seleccionado solo un ganadero
    When intenta acceder a la función de comparación
    Then el sistema muestra el mensaje:
    """
    Debe seleccionar al menos dos proveedores para realizar la comparación.
    """
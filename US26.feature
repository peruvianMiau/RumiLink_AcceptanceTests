Feature: Análisis de valoración
  Como comprador formal
  Quiero ver un análisis de valor predictivo basado en la trazabilidad del animal
  Para facilitar mi decisión de compra.

  Scenario: Generar análisis predictivo para un animal con historial completo
    Given que el usuario selecciona un animal desde la lista
    When presiona el botón "Análisis Predictivo"
    Then la plataforma muestra la barra de cumplimiento
    And muestra el valor proyectado del animal.

  Scenario: Generar análisis con información insuficiente
    Given que el usuario accede al apartado de registros
    And selecciona un animal sin historial registrado
    When el sistema calcula el análisis de valor
    Then muestra una advertencia indicando la posible inexactitud por datos faltantes.
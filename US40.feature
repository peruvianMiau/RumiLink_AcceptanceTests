Feature: Indicador de calidad y completitud de datos
  Como ganadero
  Quiero ver un indicador de cumplimiento en mi perfil
  Para mejorar mi puntuación de confianza ante compradores formales

  Background:
    Given que el sistema muestra un indicador visual de calidad de datos
    And el indicador se calcula según completitud, veracidad y vigencia de la información
    And cada sección del perfil aporta un porcentaje al indicador general
    And el sistema actualiza automáticamente el indicador al modificar o agregar información

  Scenario: Perfil con todos los registros completos
    Given que el perfil del usuario tiene completos todos los registros obligatorios
    When se calcula su puntuación de calidad de datos
    Then la barra de progreso muestra un 98%
    And el sistema muestra el mensaje "Productor Altamente Confiable"

  Scenario: Faltan registros recientes y baja la puntuación
    Given que faltan los registros de peso de los últimos 60 días en un lote
    When el sistema recalcula su puntuación
    Then la puntuación baja al 75%
    And el sistema sugiere la acción "Registro de peso pendiente"
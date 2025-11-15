Feature: Validar reputación de proveedores
  Como comprador formal
  Quiero consultar la reputación de un ganadero basada en su historial de cumplimiento
  Para elegir al proveedor más confiable

  Scenario: Mostrar reputación del proveedor al revisar su perfil
    Given que el usuario abre el perfil de un ganadero
    When el usuario consulta su historial
    Then el sistema muestra su puntuación basada en ventas pasadas y cumplimiento sanitario
    And muestra un resumen de comentarios y calificaciones anteriores

  Scenario: Guardar proveedor favorito y ajustar recomendaciones
    Given que el usuario ha comparado a varios proveedores
    When selecciona uno de ellos como favorito
    Then el sistema guarda la selección en su perfil
    And actualiza el historial de interacción
    And prioriza las recomendaciones futuras basadas en sus preferencias y reputación del proveedor
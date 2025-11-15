Feature: Evaluación de proveedores
  Como comprador formal
  Quiero calificar y dejar reseñas a los ganaderos con los que trabajo
  Para ayudar a otros compradores a identificar proveedores confiables

  Scenario: Registrar una calificación y comentario tras una transacción
    Given el usuario ha completado una transacción con un proveedor
    When califica al proveedor con 5 estrellas y añade un comentario
    Then el sistema guarda la reseña
    And actualiza su promedio público en el perfil del ganadero

  Scenario: Filtrar y exportar historial de alertas
    Given el usuario accede al módulo de "Historial de alertas"
    When selecciona un rango de fechas específico
    Then el sistema filtra las alertas mostradas
    And permite exportarlas en formato PDF o Excel
    And mantiene el registro de fecha, tipo de evento y estado de respuesta
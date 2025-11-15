Feature: Recordatorio de partos y celos
  Como ganadero
  Quiero recibir alertas de partos próximos y períodos de celo
  Para planificar mejor la reproducción.

  Scenario: Notificación de parto próximo
    Given que un animal tiene una fecha estimada de parto registrada
    When se aproxima la fecha según la anticipación configurada
    Then el sistema envía una notificación indicando que se acerca la fecha de parto.

  Scenario: Cancelación de alerta por registro previo del evento
    Given que el usuario registra el evento (nacimiento o celo)
    When el sistema evalúa la fecha correspondiente
    Then el sistema cancela y deja de enviar notificaciones pendientes.
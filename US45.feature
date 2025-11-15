Feature: Módulo de alertas personalizadas
  Como ganadero mediano
  Quiero configurar alertas personalizadas
  Para optimizar mi tiempo y evitar retrasos

  Scenario: Notificación automática por alerta configurada
    Given el usuario configuró una alerta "control veterinario"
    When se acerca la fecha establecida
    Then el sistema envía una notificación automática en la aplicación móvil

  Scenario: Envío de alertas por riesgo o actualización detectada
    Given el usuario tiene activadas notificaciones de vencimiento y recordatorios sanitarios
    When el sistema detecta una nueva actualización o riesgo en su hato
    Then el sistema envía una notificación push
    And envía un resumen al correo registrado
    And permite revisar el detalle mediante el enlace incluido
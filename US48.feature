Feature: Canal de comunicación entre ganaderos
  Como ganadero
  Quiero comunicarme con otros ganaderos dentro de la plataforma
  Para compartir información sobre prácticas sanitarias, manejo de ganado y experiencias de trazabilidad

  Scenario: Iniciar conversación con otro ganadero
    Given que un ganadero registrado ingresa al apartado "Comunidad" o "Chat"
    When selecciona a otro ganadero
    Then puede iniciar una conversación para intercambiar información sobre buenas prácticas o manejo sanitario

  Scenario: Notificación de nuevos mensajes en una conversación activa
    Given que un ganadero tiene una conversación activa en la plataforma
    When recibe un nuevo mensaje
    Then el sistema muestra una notificación en tiempo real
    And permite acceder directamente al chat desde la notificación para responder
Feature: Notificaciones de vencimiento de certificados
  Como ganadero
  Quiero recibir alertas antes del vencimiento de mis certificados sanitarios
  Para renovarlos a tiempo.

  Scenario: Alerta por certificado próximo a vencer
    Given que un certificado está próximo a vencer
    When faltan 15 días para su fecha de caducidad
    Then el sistema envía una alerta indicando el nombre del certificado y su fecha de vencimiento.

  Scenario: Eliminación de alerta tras renovación
    Given que el usuario renovó el certificado y registró una nueva fecha de vencimiento
    When llega la fecha de vencimiento original
    Then el sistema no envía alertas porque la alerta anterior queda anulada.
Feature: Validación de certificados oficiales
  Como comprador formal
  Quiero verificar digitalmente la autenticidad de los certificados sanitarios de los animales
  Para asegurarme de que no han sido alterados

  Scenario: Validar un certificado auténtico mediante código QR
    Given que el usuario escaneó un código QR
    When el certificado pertenece a un registro legítimo
    Then el sistema muestra "Certificado válido"
    And muestra los detalles sanitarios y la entidad emisora

  Scenario: Renovación de certificaciones próximas a vencer
    Given que el usuario recibe una alerta de vencimiento próximo
    When accede al módulo de certificaciones y selecciona "Renovar"
    Then el sistema muestra los requisitos actualizados
    And permite cargar nuevos documentos escaneados
    And envía la solicitud de renovación a la entidad correspondiente para su validación digital
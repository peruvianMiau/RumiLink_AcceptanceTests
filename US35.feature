Feature: Notificación de nuevos proveedores confiables
  Como comprador formal
  Quiero recibir notificaciones cuando ingresen nuevos proveedores certificados en mi región
  Para ampliar mis opciones de compra

  Scenario: Notificación por ingreso de un nuevo proveedor certificado en la región
    Given que un nuevo ganadero se registra con certificaciones vigentes
    When coincide con la región del usuario
    Then el sistema envía una notificación automática

  Scenario: Notificación por certificado próximo a vencer
    Given que el usuario ya configuró alertas sobre vacunación y certificados
    When un certificado de un animal está próximo a vencer
    Then el sistema envía una notificación automática
    And muestra una advertencia visual en el panel principal indicando la acción necesaria para mantener la trazabilidad actualizada
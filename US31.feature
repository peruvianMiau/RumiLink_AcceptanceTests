Feature: Validar proveedores con certificaciones activas
  Como comprador formal
  Quiero verificar que un proveedor tenga certificaciones sanitarias activas
  Para asegurar que cumple los estándares del mercado.

  Scenario: Certificaciones vigentes visibles
    Given que el usuario abre el perfil de un ganadero
    When revisa la sección de certificaciones
    Then el sistema muestra el listado con el estado de cada certificación
    And destaca cuáles están vigentes.

  Scenario: Proveedor sin certificaciones activas
    Given que el usuario abre el perfil de un ganadero
    And el sistema detecta que todas sus certificaciones están vencidas o inactivas
    When el usuario revisa la sección de certificaciones
    Then el sistema muestra el mensaje "Este ganadero no cuenta con certificaciones activas actualmente".
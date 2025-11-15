Feature: Verificación oficial de certificados
  Como comprador formal
  Quiero que los certificados digitales estén verificados automáticamente por veterinarios
  Para tener total confianza en la información presentada.

  Scenario: Certificado validado oficialmente
    Given que el usuario consulta un certificado
    When el sistema valida el documento con la fuente oficial veterinaria
    Then el sistema muestra el sello "Verificado por Veterinario"
    And muestra la entidad emisora, fecha de emisión, vigencia y número de registro.

  Scenario: Fallo en la verificación oficial
    Given que el usuario consulta un certificado digital cargado por un ganadero
    And el sistema intenta conectarse a la fuente oficial de verificación veterinaria
    When la entidad oficial no responde o la conexión falla
    Then el sistema muestra el mensaje "Verificación temporalmente no disponible. Intente más tarde."
    And el certificado se marca como "Pendiente de verificación".
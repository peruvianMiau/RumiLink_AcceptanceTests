Feature: Catálogo filtrado por origen y genética
  Como comprador formal
  Quiero filtrar animales por origen y características genéticas
  Para encontrar proveedores alineados a mis clientes

  Scenario: Filtrar animales por raza o genética
    Given que el usuario ingresa al buscador
    When aplica el filtro "Raza/Genética"
    Then el sistema muestra solo los animales que cumplen con los parámetros seleccionados

  Scenario: Advertir certificaciones próximas a vencer en el perfil de un ganadero
    Given que el usuario consulta el perfil de un ganadero
    When una certificación del proveedor esté próxima a vencer
    Then el sistema muestra una etiqueta amarilla "Por vencer"
    And ofrece la opción de notificar al proveedor o filtrar automáticamente solo aquellos con certificaciones vigentes
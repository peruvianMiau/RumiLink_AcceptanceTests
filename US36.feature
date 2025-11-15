Feature: Escaneo QR de trazabilidad en la compra
  Como comprador formal
  Quiero escanear un código QR en el lote adquirido
  Para verificar rápidamente su trazabilidad y sanidad

  Scenario: Mostrar historial sanitario al escanear un código QR válido
    Given que el usuario recibe un lote
    When escanea el código QR
    Then el sistema muestra el historial completo de los animales

  Scenario: Sincronización posterior cuando no hay conexión al escanear
    Given que el usuario escanea el código QR sin conexión a internet
    When la aplicación detecta conexión posteriormente
    Then el sistema sincroniza los datos pendientes
    And muestra la información completa del animal garantizando la validación segura del registro
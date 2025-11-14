Feature: Acceso offline en zonas rurales
  Como ganadero mediano,
  Quiero usar la aplicación sin conexión a internet,
  Para registrar datos en campo y sincronizarlos después.

  Scenario Outline: Registrar datos en modo offline
    Given el usuario no tiene conexión a internet
    When registra un dato en la aplicación
    Then el sistema almacena la información localmente
    And muestra que está en modo offline

    Examples: Registros offline
      | dato        |
      | "Peso"      |
      | "Vacunación"|

  Scenario Outline: Sincronizar datos al recuperar conexión
    Given el usuario recupera conexión a internet
    When el sistema detecta la red disponible
    Then sincroniza automáticamente los datos almacenados
    And los sube a la nube manteniendo su integridad y orden

    Examples: Sincronización
      | lote-sincronizacion |
      | "Lote 1"            |
      | "Lote 2"            |
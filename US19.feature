Feature: Historial de relaciones comerciales
  Como ganadero,
  Quiero ver todas mis ventas realizadas con los distintos gremios,
  Para analizar la evolución de mi negocio.

  Scenario Outline: Mostrar historial de ventas cuando existen transacciones
    Given el usuario ingresa a su perfil
    When consulta el apartado de transacciones
    Then el sistema muestra la lista con fecha, gremio y monto

    Examples: Historial disponible
      | ganadero-id |
      | "G001"      |
      | "G014"      |

  Scenario Outline: Avisar cuando no existen transacciones registradas
    Given el usuario no tiene ventas registradas
    When accede al apartado "Mi historial"
    Then el sistema muestra el mensaje: "No existen transacciones registradas"

    Examples: Historial vacío
      | ganadero-id |
      | "G022"      |
      | "G089"      |
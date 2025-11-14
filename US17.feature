Feature: Geolocalización de ganaderos
  Como comprador formal,
  Quiero ver en un mapa la ubicación de los ganaderos registrados,
  Para identificar proveedores cercanos.

  Scenario Outline: Mostrar ganaderos de una región en el mapa
    Given el usuario ingresa al mapa interactivo
    When selecciona la región <region>
    Then el sistema muestra los ganaderos disponibles con su ubicación aproximada

    Examples: Regiones consultadas
      | region      |
      | "Norte"     |
      | "Sur"       |

  Scenario Outline: Avisar cuando un ganadero no tiene ubicación registrada
    Given el ganadero <ganadero-id> no ha registrado su ubicación
    When el usuario intenta visualizarlo en el mapa
    Then el sistema muestra un aviso: "Ubicación no disponible"

    Examples: Ubicación no registrada
      | ganadero-id |
      | "G001"      |
      | "G089"      |
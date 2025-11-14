Feature: Filtro de búsqueda avanzada
  Como comprador,
  Quiero filtrar animales por edad, especie o estado sanitario,
  Para localizar rápidamente los que me interesan.

  Scenario Outline: Aplicar un filtro y visualizar animales que cumplen los criterios
    Given el usuario ingresa al buscador
    When aplica el filtro <filtro>
    Then el sistema muestra solo los animales que cumplen con los criterios aplicados

    Examples: Variables de entrada
      | filtro                             |
      | "animales vacunados en el último año" |
      | "toros mayores de 2 años"             |
      | "bovinos en buen estado sanitario"    |

  Scenario Outline: No existen animales que cumplan los filtros aplicados
    Given el usuario se encuentra en la pantalla de búsqueda avanzada
    And ha aplicado uno o varios filtros: <filtros>
    When ninguno de los animales registrados cumple con los criterios seleccionados
    Then el sistema muestra un mensaje informativo como <mensaje-error>

    Examples: Variables de entrada y salida
      | filtros               | mensaje-error        |
      | "terneros hembra"     | "ERROR DE BÚSQUEDA" |
      | "bovinos vacunados"   | "ERROR DE BÚSQUEDA" |
Feature: Comparación de animales
  Como comprador formal,
  Quiero comparar varios animales,
  Para decidir cuál se ajusta mejor a mis necesidades.

  Scenario Outline: Comparar dos o más animales seleccionados
    Given el usuario selecciona <cantidad> animales del mismo tipo en la pantalla principal o de búsqueda
    When selecciona la opción <opcion-comparar>
    Then el sistema muestra una tabla comparativa con diferencias de <comparacion-atributos>

    Examples: Variables de entrada y salida
      | cantidad | opcion-comparar | comparacion-atributos                  |
      | 2        | "Comparar"      | edad, historial, certificados          |
      | 3        | "Comparar"      | edad, historial, certificados          |

  Scenario Outline: Intentar comparar con menos de dos animales seleccionados
    Given el usuario se encuentra en la pantalla de visualización o búsqueda de animales
    And aún no ha seleccionado el mínimo requerido (<cantidad-minima>) para realizar una comparación
    When el usuario presiona el botón <boton-comparar>
    Then el sistema muestra un mensaje informativo como <mensaje-error>

    Examples: Variables de entrada y salida
      | cantidad-minima | boton-comparar | mensaje-error                                      |
      | 2               | "Comparar"     | "Selecciona al menos dos animales para realizar la comparación." |
Feature: Registro de peso
Como ganadero mediano,
Quiero actualizar periódicamente el peso de cada animal,
Para monitorear su desarrollo y estado de salud.

Scenario Outline: Registrar un nuevo peso del animal
    Given el usuario ha seleccionado el animal <nombre-animal> en la aplicación
    And se muestran la imagen y los datos generales del animal, junto a los botones "Historial" y "Productividad"
    When el usuario ingresa un nuevo valor de peso <peso>
    Then el sistema guarda automáticamente el registro con la fecha actual

    Examples: Variables de entrada
    | nombre-animal | peso |
    | "Vaca 07"     | 430  |
    | "Toro 09"     | 560  |

Scenario Outline: Consultar historial de pesos registrados
    Given el usuario se encuentra en la pantalla del animal <nombre-animal> seleccionado
    And existen registros previos de peso
    When el usuario presiona el botón <boton-historial>
    Then la aplicación muestra una lista cronológica con los pesos registrados, indicando <fecha> y <peso> de cada medición

    Examples: Variables de entrada
    | nombre-animal | boton-historial |
    | "Vaca 07"     | "Historial"     |

    Examples: Variables de salida
    | fecha       | peso |
    | 01/11/2025  | 430  |
    | 15/10/2025  | 415  |
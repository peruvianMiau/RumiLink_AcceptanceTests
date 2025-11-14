Feature: Visualizar historial completo
Como ganadero,
Quiero ver el historial completo de cada animal,
Para consultar su evolución sanitaria.

Scenario Outline: Visualizar el historial completo del animal
    Given el usuario ha seleccionado el animal <nombre-animal>
    And se muestran la imagen del animal, los datos generales, y los botones "Historial" y "Productividad"
    When el usuario ingresa al apartado <apartado-historial>
    Then el sistema muestra vacunas, desparasitaciones, peso y certificaciones del animal

    Examples: Variables de entrada
    | nombre-animal | apartado-historial |
    | "Vaca 03"     | "Historial"        |

Scenario Outline: Consultar detalles de un registro del historial
    Given el usuario se encuentra en el apartado <apartado-historial> del animal <nombre-animal> seleccionado
    And el sistema muestra una lista con los registros de vacunas, desparasitaciones, peso y certificaciones
    When el usuario selecciona uno de los registros de la lista
    Then la aplicación muestra una pantalla o ventana emergente con los detalles completos de ese registro, incluyendo <tipo>, <fecha>, <responsable> y <observaciones>

    Examples: Variables de salida
    | nombre-animal | apartado-historial | tipo         | fecha       | responsable   | observaciones             |
    | "Vaca 03"     | "Historial"        | "Vacuna"     | 14/11/2025  | "Juan Pérez"  | "Reacción normal"         |
    | "Vaca 03"     | "Historial"        | "Desparasitación" | 01/10/2025  | "Ana López"   | "Sin eventos"             |
    | "Vaca 03"     | "Historial"        | "Peso"       | 01/11/2025  | "Ana López"   | "Ganancia de peso óptima" |
    | "Vaca 03"     | "Historial"        | "Certificación" | 20/12/2025 | "SENASAG"     | "Certificada"             |

Scenario Outline: Editar los datos generales del animal desde la pantalla de historial
    Given el usuario se encuentra en el apartado <apartado-historial> del animal <nombre-animal> seleccionado
    When el usuario presiona el ícono de lápiz sobre la imagen del animal
    Then el sistema le permite editar los datos generales del animal
    And al finalizar, el sistema guarda automáticamente los cambios realizados

    Examples: Variables de entrada
    | nombre-animal | apartado-historial |
    | "Vaca 03"     | "Historial"        |
    | "Toro 08"     | "Historial"        |
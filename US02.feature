Feature: Registro de desparasitación  
Como ganadero,  
Quiero registrar las desparasitaciones,  
Para asegurar la trazabilidad sanitaria de cada animal.

Scenario Outline: Editar, registrar o eliminar registros de desparasitación
    Given el usuario ha seleccionado el animal <nombre-animal>
    And se encuentra en la sección de desparasitación
    When el usuario selecciona el icono del lápiz
    Then el sistema permite <accion> un registro de desparasitación
    And al finalizar, el sistema guarda y actualiza el registro en la aplicación

    Examples: Variables de entrada
    | nombre-animal | accion     |
    | "Vaca 01"     | editar     |
    | "Toro 12"     | registrar  |
    | "Vaca 05"     | eliminar   |

Scenario Outline: Consultar registros previos de desparasitación
    Given el usuario ha ingresado a la sección de desparasitación del animal <nombre-animal> seleccionado
    And existen registros previos de desparasitación
    When el usuario accede a la pantalla principal de la sección
    Then el sistema muestra una lista con los registros de desparasitación existentes, incluyendo <fecha>, <tipo-desparasitante> y <responsable>

    Examples: Variables de salida
    | nombre-animal | fecha      | tipo-desparasitante | responsable       |
    | "Vaca 01"     | 10/11/2025 | "Ivermectina"       | "Juan Pérez"      |
    | "Toro 12"     | 09/11/2025 | "Levamisol"         | "Ana López"       |
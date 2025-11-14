Feature: Registro de vacunas  
Como ganadero,  
Quiero registrar las vacunas aplicadas a mis animales,  
Para mantener actualizado el historial sanitario.

Scenario Outline: Registrar una nueva vacuna al historial del animal
    Given el usuario ha seleccionado el animal <nombre-animal> en la aplicación
    And se muestran la imagen y los datos generales del animal, junto a los botones "Historial" y "Productividad"
    When el usuario presiona el ícono de lápiz sobre la imagen del animal
    And edita o ingresa la <fecha>, el <tipo-vacuna> y los datos requeridos
    And finaliza la edición
    Then el sistema guarda automáticamente el registro en el historial del animal

    Examples: Variables de entrada
    | nombre-animal | fecha        | tipo-vacuna           |
    | "Vaca 01"     | 14/11/2025   | "Vacuna Aftosa"       |
    | "Toro 12"     | 10/10/2025   | "Carbunclo sintomático" |

Scenario Outline: Consultar el historial de vacunas del animal
    Given el usuario se encuentra en la pantalla del animal <nombre-animal> seleccionado
    And el sistema ya tiene registrado al menos una vacuna anterior
    When el usuario presiona el botón <boton-historial>
    Then la aplicación muestra una lista cronológica con las vacunas aplicadas, incluyendo la <fecha>, el <tipo-vacuna> y el <responsable>

    Examples: Variables de entrada
    | nombre-animal | boton-historial |
    | "Vaca 01"     | "Historial"     |

    Examples: Variables de salida
    | fecha        | tipo-vacuna           | responsable       |
    | 14/11/2025   | "Vacuna Aftosa"       | "Juan Pérez"      |
    | 10/10/2025   | "Carbunclo sintomático" | "Ana López"     |

Scenario Outline: Editar opciones en la pantalla del animal
    Given el usuario se encuentra en la pantalla del animal <nombre-animal>
    When el usuario edita las opciones de la pantalla
    Then el sistema guarda automáticamente los cambios realizados por el usuario

    Examples: Variables de entrada
    | nombre-animal |
    | "Vaca 01"     |
    | "Toro 12"     |
Feature: Generación de certificados digitales
  Como ganadero mediano,
  Quiero generar certificados sanitarios digitales,
  Para cumplir rápidamente con los requisitos de exportación.

  Scenario Outline: Generar un certificado con historial completo
    Given el animal seleccionado tiene historial sanitario completo
    When el usuario solicita el certificado
    Then el sistema genera el PDF firmado digitalmente
    And lo almacena en el historial del animal

    Examples: Animales válidos
      | animal-id |
      | "A001"    |
      | "A145"    |

  Scenario Outline: Intentar generar certificado con datos faltantes
    Given el animal tiene información incompleta (<dato-faltante>)
    When el usuario solicita el certificado
    Then el sistema rechaza la solicitud e indica los datos faltantes: <mensaje-alerta>

    Examples: Datos faltantes
      | dato-faltante        | mensaje-alerta                               |
      | "vacunas"            | "Falta registrar las vacunas obligatorias."  |
      | "exámenes sanitarios"| "Faltan exámenes sanitarios requeridos."     |
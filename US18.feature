Feature: Reporte de muerte animal
  Como ganadero mediano,
  Quiero registrar casos de muerte en mi ganado,
  Para controlar pérdidas y analizar riesgos sanitarios.

  Scenario Outline: Registrar correctamente un animal fallecido
    Given el usuario registra un animal como fallecido
    When ingresa la fecha y la causa de muerte
    Then el sistema actualiza el historial del animal
    And actualiza los indicadores productivos

    Examples: Registros válidos
      | animal-id |
      | "A010"    |
      | "A257"    |

  Scenario Outline: Intentar guardar registro sin causa de muerte
    Given el usuario no indicó la causa de muerte del animal <animal-id>
    When intenta guardar el registro
    Then el sistema muestra un mensaje solicitando completar el campo obligatorio

    Examples: Datos incompletos
      | animal-id |
      | "A010"    |
      | "A134"    |
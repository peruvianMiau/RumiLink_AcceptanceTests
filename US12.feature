Feature: Notificaciones de vacunación
  Como ganadero mediano,
  Quiero recibir recordatorios automáticos de vacunación,
  Para no olvidar el calendario sanitario.

  Scenario Outline: Enviar notificación cuando se acerca la fecha
    Given se aproxima una fecha programada de vacunación
    When el sistema detecta la programación
    Then envía una notificación al móvil del ganadero

    Examples: Próximas vacunaciones
      | animal-id |
      | "A001"    |
      | "A054"    |

  Scenario Outline: Evitar notificaciones si la vacunación ya fue registrada
    Given el usuario ya registró la vacunación del animal <animal-id>
    When llega la fecha programada
    Then el sistema no envía notificaciones duplicadas

    Examples: Vacunaciones registradas
      | animal-id |
      | "A001"    |
      | "A089"    |
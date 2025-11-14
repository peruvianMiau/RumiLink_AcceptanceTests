Feature: Registro de ganado
  Como ganadero mediano,
  Quiero registrar fácilmente a cada animal en la plataforma,
  Para llevar un control organizado y cumplir con requisitos sanitarios.

  Scenario Outline: Registrar correctamente un animal completando todos los datos
    Given el usuario accede al módulo de registro
    When completa los datos básicos del animal: <raza>, <edad>, <identificacion>
    Then el sistema guarda el registro correctamente
    And actualiza la lista de animales disponibles

    Examples: Variables de entrada
      | raza      | edad | identificacion   |
      | "Brahman" | 2    | "B00123"         |
      | "Brangus" | 1    | "B00124"         |

  Scenario Outline: Intentar guardar el registro con campos incompletos
    Given el formulario no está completo (falta <campo-faltante>)
    When el ganadero intenta guardar
    Then el sistema muestra una alerta de campos faltantes: <mensaje-alerta>

    Examples: Casos con campos faltantes
      | campo-faltante    | mensaje-alerta                      |
      | "raza"            | "Por favor, complete el campo raza."|
      | "edad"            | "Por favor, complete el campo edad."|
      | "identificacion"  | "Por favor, complete el campo identificación."|
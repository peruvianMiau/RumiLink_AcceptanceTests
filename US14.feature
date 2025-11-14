Feature: Registro y control de medidas de bioseguridad
  Como ganadero mediano,
  Quiero registrar y monitorear medidas de bioseguridad,
  Para cumplir protocolos sanitarios y reducir riesgos de enfermedad.

  Scenario Outline: Registrar correctamente una medida de bioseguridad
    Given el usuario accede al módulo de bioseguridad
    And completa el formulario con los datos obligatorios: <tipo-medida>, <fecha>, <responsable>
    When guarda el registro
    Then el sistema almacena la información
    And adjunta la evidencia cargada
    And muestra el registro en el historial de bioseguridad

    Examples: Medidas registradas
      | tipo-medida        | fecha       | responsable     |
      | "Desinfección"     | "2025-02-01"| "Supervisor"    |
      | "Control de acceso"| "2025-02-10"| "Responsable A" |

  Scenario Outline: Intentar registrar una medida con datos incompletos
    Given falta información obligatoria en el formulario (<campo-faltante>)
    When el usuario pulsa “Guardar”
    Then el sistema muestra un mensaje de error: <mensaje-error>
    And no permite registrar la medida

    Examples: Campos faltantes
      | campo-faltante | mensaje-error                   |
      | "tipo-medida"  | "Faltan campos obligatorios."   |
      | "fecha"        | "Faltan campos obligatorios."   |
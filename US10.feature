Feature: Gestión de emergencias y planes de contingencia
  Como ganadero mediano,
  Quiero definir y ejecutar planes de contingencia,
  Para responder rápido ante incidentes y proteger mi rebaño.

  Scenario Outline: Crear un plan de contingencia con todos los datos
    Given el usuario accede al módulo de planes
    When registra un plan para el tipo: <tipo-emergencia> con responsables y checklist completos
    And sube una foto del sector
    Then el sistema guarda el plan correctamente
    And queda disponible para activación

    Examples: Planes registrados
      | tipo-emergencia   |
      | "Brote sanitario" |
      | "Incendio"        |

  Scenario Outline: Activar un plan ante una emergencia
    Given ocurre una emergencia del tipo <tipo-emergencia>
    When el usuario activa el plan <plan-nombre> y confirma
    Then el sistema envía alertas automáticas a los responsables
    And registra el log de activación

    Examples: Activaciones
      | tipo-emergencia   | plan-nombre              |
      | "Brote sanitario" | "Plan Brote Sanitario"   |
      | "Incendio"        | "Plan Incendio"          |

  Scenario Outline: Registrar un simulacro de emergencia
    Given el usuario programa un simulacro de <tipo-emergencia>
    When ejecutan el simulacro y finalizan
    Then el sistema guarda el reporte con observaciones y calificación
    And queda disponible para exportación

    Examples: Simulacros
      | tipo-emergencia |
      | "Incendio"      |
      | "Inundación"    |

  Scenario Outline: Intentar crear o editar un plan sin permisos
    Given el usuario no tiene permisos para <accion>
    When intenta realizar la acción
    Then el sistema muestra una alerta: <mensaje-alerta>

    Examples: Permisos insuficientes
      | accion   | mensaje-alerta                        |
      | "crear"  | "No tiene permisos para crear planes."|
      | "editar" | "No tiene permisos para editar planes."|
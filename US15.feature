Feature: Panel de indicadores productivos
  Como ganadero mediano,
  Quiero visualizar un panel con indicadores productivos,
  Para tomar decisiones estratégicas basadas en datos.

  Scenario Outline: Mostrar indicadores cuando existen registros
    Given el sistema cuenta con registros productivos suficientes
    When el usuario accede al dashboard
    Then el sistema muestra gráficos actualizados en tiempo real

    Examples: Accesos válidos
      | usuario |
      | "User1" |
      | "User2" |

  Scenario Outline: Mostrar mensaje cuando no hay registros
    Given no existen registros productivos en el sistema
    When el usuario abre el panel "Dashboard"
    Then el sistema muestra el mensaje: <mensaje>

    Examples: Sin datos
      | mensaje                  |
      | "No hay datos disponibles." |
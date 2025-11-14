Feature: Ver experiencia del ganadero
  Como comprador formal,
  Quiero ver cuántos años lleva registrado un ganadero y su historial de registros,
  Para evaluar su seriedad.

  Scenario Outline: Consultar información general del perfil de ganadero
    Given el usuario selecciona un perfil de ganadero <nombre-ganadero>
    When el usuario consulta su información general
    Then el sistema muestra la fecha de registro y el número de animales gestionados

    Examples: Variables de entrada y salida
      | nombre-ganadero | fecha-registro | numero-animales |
      | "Pedro Toro"    | "2018-05-10"   | 150             |
      | "Ana Bovino"    | "2020-03-14"   | 98              |

  Scenario Outline: Consultar historial de registros y nivel de compromiso del ganadero
    Given el usuario se encuentra en el perfil de un ganadero <nombre-ganadero>
    And el sistema tiene almacenado su historial de registros (vacunas, desparasitaciones y certificaciones de sus animales)
    When el usuario selecciona la opción "Ver historial"
    Then el sistema muestra una lista cronológica con las actividades registradas por el ganadero, permitiendo identificar la <frecuencia> y <consistencia> de sus actualizaciones

    Examples: Variables de entrada y salida
      | nombre-ganadero | frecuencia         | consistencia                 |
      | "Pedro Toro"    | "alta (semanal)"   | "actualiza habitualmente"    |
      | "Ana Bovino"    | "baja (mensual)"   | "actualiza eventualmente"    |
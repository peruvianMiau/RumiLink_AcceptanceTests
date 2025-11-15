Feature: Catálogo informativo de perfiles de ganaderos
  Como comprador formal
  Quiero acceder a un catálogo con perfiles detallados de ganaderos
  Para evaluar su formalización y calidad.

  Scenario: Visualización del perfil de un ganadero
    Given que el usuario selecciona el perfil de un ganadero
    When revisa su información
    Then puede ver sus datos técnicos y detalles del perfil.

  Scenario: Filtrar y ordenar el catálogo
    Given que el usuario está en el catálogo informativo
    And el sistema muestra la lista completa de ganaderos
    When el comprador aplica filtros como ubicación, certificación o índice de cumplimiento
    And selecciona un criterio de ordenamiento
    Then el sistema actualiza dinámicamente el catálogo mostrando solo los ganaderos filtrados
    And ordena los resultados según el criterio elegido.
Feature: Visualización de Integrantes del Equipo
  Como Visitante
  Quiero ver la información del equipo (foto, nombre y rol)
  Para conocer quién desarrolla el proyecto y generar confianza.

  Background:
    Given que estoy en el Landing Page
    And me desplazo hacia la sección "Conócenos"

  Scenario: Visualizar tarjetas de integrantes
    When observo la sección de equipo
    Then debo ver una tarjeta con el nombre y rol de cada integrante
    And cada tarjeta debe mostrar una fotografía correspondiente

  Scenario: Acceder a un perfil desde la tarjeta
    When hago clic en el botón "Ver Perfil" de un integrante
    Then debe abrirse una nueva pestaña con el enlace asignado (real o simulado)

  Scenario: Ver todas las tarjetas disponibles
    When reviso la sección "Conócenos"
    Then deben mostrarse todas las tarjetas del equipo sin errores visuales
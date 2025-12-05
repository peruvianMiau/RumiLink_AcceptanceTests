Feature: Visualización de la Misión del Proyecto
  Como Visitante
  Quiero ver la misión del proyecto en una sección dedicada
  Para comprender el propósito e intención del sistema.

  Background:
    Given que estoy en el Landing Page

  Scenario: Mostrar el texto de la misión
    When me desplazo hacia la sección de misión
    Then debo ver el texto institucional correctamente formateado

  Scenario: Acceso al enlace "Leer más"
    When hago clic en el enlace "Leer más"
    Then debo ser redirigido al contenido extendido (página o modal)

  Scenario: Coherencia visual
    Then la misión debe estar alineada visualmente con el estilo del Landing Page
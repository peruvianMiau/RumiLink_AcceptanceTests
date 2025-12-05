Feature: Navegación por el Menú Principal
  Como Visitante
  Quiero navegar por el menú principal con scroll suave
  Para desplazarme rápidamente entre las secciones del Landing Page.

  Background:
    Given que estoy en el Landing Page de AgroNexo

  Scenario: Visualizar el menú fijo
    Then el menú debe mantenerse visible en la parte superior al hacer scroll

  Scenario: Navegación a una sección mediante scroll suave
    When hago clic en la opción "¿Cómo Funciona?"
    Then debo desplazarme suavemente hacia la sección correspondiente

  Scenario: Acceso al botón "Descargar App"
    When hago clic en el botón "Descargar App"
    Then debo ser redirigido al enlace de descarga (real o simulado)

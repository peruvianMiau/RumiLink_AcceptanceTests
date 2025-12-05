Feature: Visualización de la Demo en Acción
  Como Visitante
  Quiero ver capturas reales del prototipo mediante una galería
  Para visualizar cómo funciona la aplicación antes de usarla.

  Background:
    Given que estoy en el Landing Page
    And me desplazo a la sección de la galería

  Scenario: Navegar entre las imágenes del carrusel
    When hago clic en el botón siguiente del carrusel
    Then la imagen debe cambiar a la siguiente captura

  Scenario: Ver las imágenes optimizadas
    When observo la galería
    Then las imágenes deben verse nítidas y correctamente adaptadas a la pantalla

  Scenario: Visualizar capturas en móvil
    Given que uso un dispositivo móvil
    When navego por el carrusel
    Then las imágenes deben ajustarse al ancho de la pantalla
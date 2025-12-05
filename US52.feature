Feature: Visualización del Hero Section
  Como Visitante
  Quiero ver el Hero Section con título, subtítulo e imagen
  Para comprender rápidamente el propósito del proyecto.

  Background:
    Given que estoy en el Landing Page

  Scenario: Mostrar correctamente el título principal
    Then el Hero Section debe mostrar un título claro y visible

  Scenario: Visualización de la imagen representativa
    Then debe mostrarse una imagen principal asociada al proyecto

  Scenario: Diseño responsivo del Hero Section
    Given que uso un dispositivo móvil
    Then el contenido del Hero Section debe ajustarse correctamente al tamaño de pantalla
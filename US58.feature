Feature: Exploración de Funcionalidades con Imágenes
  Como Visitante
  Quiero explorar las 9 funcionalidades principales del sistema con su respectivo título e ícono
  Para obtener un resumen rápido de lo que ofrece AgroNexo.

  Background:
    Given que estoy en el Landing Page
    And me desplazo hacia la sección "Explora nuestras funcionalidades"

  Scenario: Visualizar los 9 módulos de funcionalidades
    When reviso la cuadrícula de funcionalidades
    Then debo ver los 9 elementos clave del sistema
    And cada módulo debe incluir un título claro y un ícono representativo

  Scenario: Ver el módulo Actualizar Certificado
    When observo los módulos disponibles
    Then debo identificar la funcionalidad "Actualizar Certificado"

  Scenario: Ver el módulo Consultar Experiencia
    When observo los módulos disponibles
    Then debo identificar la funcionalidad "Consultar Experiencia"

  Scenario: Validar integridad de la lista
    When recorro la cuadrícula completa
    Then deben aparecer los 9 módulos sin ausencias ni duplicados
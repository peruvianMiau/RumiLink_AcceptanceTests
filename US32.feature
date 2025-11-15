Feature: Reporte de riesgos sanitarios por lote
  Como comprador formal
  Quiero ver un reporte de riesgos sanitarios por lote de animales
  Para reducir la incertidumbre en mis compras.

  Scenario: Visualizar reporte sanitario del lote
    Given que el usuario selecciona un lote
    When abre el reporte
    Then el sistema muestra los indicadores de vacunación, peso y enfermedades registradas.

  Scenario: Descargar reporte sanitario en PDF
    Given que el usuario visualiza el reporte sanitario de un lote
    And el sistema ha generado los indicadores correspondientes
    When el usuario selecciona "Descargar reporte"
    Then el sistema genera un archivo PDF con toda la información del lote
    And el documento incluye nombre del lote, fecha de generación, indicadores sanitarios y sello de validación.
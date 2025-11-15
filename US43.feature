Feature: Generación automática de reportes sanitarios
  Como ganadero
  Quiero generar reportes sanitarios automáticos de mi rebaño
  Para obtener una visión general del estado de salud sin revisar cada registro individual

  Background:
    Given que el sistema permite seleccionar un rango de fechas para generar reportes sanitarios
    And el reporte debe incluir animales vacunados, desparasitados y pendientes
    And el sistema genera el reporte en formato PDF con opción de descarga o compartición

  Scenario: Generar reporte sanitario del último mes
    Given que el usuario selecciona "Generar reporte sanitario"
    When elige el periodo del último mes
    Then el sistema genera un PDF con el resumen sanitario del ganado
    And muestra el documento al usuario

  Scenario: Generar reporte sanitario sin datos disponibles
    Given que el usuario selecciona un rango de fechas sin registros sanitarios
    When presiona la opción "Generar reporte sanitario"
    Then el sistema muestra el mensaje: "No se encontraron registros sanitarios en el periodo seleccionado."
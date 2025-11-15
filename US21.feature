Feature: Exportación de reportes en Excel/PDF
  Como ganadero
  Quiero exportar mis datos sanitarios y productivos a Excel o PDF
  Para compartirlos fácilmente con entidades externas.

  Scenario: Exportación exitosa de reportes
    Given que el usuario está en el panel de indicadores
    When selecciona la opción "Exportar" y elige un formato válido (Excel o PDF)
    Then el sistema genera el archivo y la descarga se inicia automáticamente.

  Scenario: Intento de exportación sin datos
    Given que no existen datos disponibles en el rango o tipo seleccionado
    When el usuario intenta exportar los indicadores
    Then el sistema muestra el mensaje: "No hay información para exportar".
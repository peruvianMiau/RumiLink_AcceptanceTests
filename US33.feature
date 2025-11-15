Feature: Acceso rápido al historial de alimentación
  Como comprador formal
  Quiero revisar la dieta de los animales ofrecidos
  Para evaluar la calidad de la carne y diferenciar proveedores

  Background:
    Given que el usuario accede a la ficha individual de un animal

  Scenario: Visualización del historial de alimentación
    When el usuario ingresa al apartado "Alimentación"
    Then el sistema muestra los registros de alimentación con fecha, tipo de alimento y observaciones
    And el sistema indica si existen periodos sin registro de alimentación

  Scenario: Advertencia por periodos sin registro
    Given que existen lapsos sin registro de alimentación identificados por el sistema
    When el usuario ingresa al apartado "Alimentación"
    Then el sistema muestra una advertencia con el mensaje:
      """
      Se detectaron periodos sin registro de alimentación entre [fecha inicial] y [fecha final]
      """
    And permite visualizar los registros anteriores y posteriores para evaluar la consistencia del historial
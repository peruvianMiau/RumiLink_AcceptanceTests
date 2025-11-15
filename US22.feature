Feature: Registro de alimentación del ganado
  Como ganadero mediano
  Quiero registrar la dieta de cada animal
  Para demostrar buenas prácticas de crianza y calidad en la carne/leche.

  Scenario: Registro exitoso de alimentación
    Given que el usuario selecciona un animal
    When ingresa el tipo de alimento, la cantidad y la fecha/hora
    Then el sistema guarda el registro en el historial de trazabilidad del animal.

  Scenario: Registro con campos obligatorios incompletos
    Given que no se indicó la cantidad de alimento
    When el usuario intenta guardar la información
    Then el sistema muestra un mensaje indicando que el campo es obligatorio.
Feature: Configuración de alertas por caducidad de datos
  Como ganadero
  Quiero configurar el periodo de validez para mis registros de peso y dietas
  Para mantener mis datos actualizados y conservar un buen indicador de calidad

  Background:
    Given que el sistema permite definir un periodo de validez para cada tipo de dato
    And el ganadero puede configurar la anticipación de alertas (1, 3, 5 o 7 días antes)

  Scenario: El registro se actualiza y la alerta desaparece
    Given que el usuario recibe una alerta de caducidad
    And registra un nuevo peso del animal
    When revisa su panel de control
    Then la alerta de caducidad para ese animal desaparece
    And el indicador de calidad de datos se actualiza

  Scenario: Un registro caduca y afecta el indicador de calidad de datos
    Given que el periodo de validez de un registro de peso o dieta ha expirado
    And el usuario no realizó ninguna actualización dentro del plazo configurado
    When el sistema realiza la verificación automática
    Then el registro se marca con el estado "Vencido"
    And el indicador de calidad de datos del ganadero disminuye proporcionalmente según los registros expirados
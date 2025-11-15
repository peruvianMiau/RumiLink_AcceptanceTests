Feature: Sugerencias automáticas de contacto técnico
  Como ganadero
  Quiero recibir sugerencias de otros ganaderos o instituciones con registros o certificaciones similares
  Para compartir experiencias y validar buenas prácticas dentro de la plataforma

  Scenario: Sugerencias basadas en certificación sanitaria registrada
    Given que el usuario registró un lote con una certificación sanitaria específica
    When la plataforma identifica otros usuarios con la misma certificación
    Then muestra sugerencias de contacto técnico para compartir experiencias

  Scenario: Actualización dinámica de contactos sugeridos
    Given que el usuario ha interactuado con otros ganaderos o actualizado certificaciones
    When la plataforma detecta coincidencias en tipo de ganado, ubicación o certificaciones
    Then muestra una lista actualizada de contactos sugeridos
    And permite enviarles una solicitud directa mostrando intereses o temas comunes
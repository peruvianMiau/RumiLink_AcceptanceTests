Feature: Registro de observaciones sanitarias por parte del ganadero
  Como ganadero
  Quiero registrar observaciones sanitarias en mis animales
  Para llevar un control completo de la salud del rebaño

  Background:
    Given que el sistema permite añadir observaciones sanitarias por animal
    And cada observación incluye fecha, descripción y acciones tomadas
    And las observaciones se almacenan en el historial sanitario del animal
    And el sistema asocia automáticamente la observación al lote correspondiente
    And el sistema permite editar observaciones existentes y registra el historial de cambios

  Scenario: Registrar una nueva observación sanitaria
    Given que un animal presenta una incidencia sanitaria
    When el usuario registra la observación en su ficha individual
    Then el sistema guarda la información en el historial sanitario
    And asocia la observación al lote correspondiente

  Scenario: Editar una observación sanitaria existente
    Given que existe una observación sanitaria registrada en la ficha del animal
    And el usuario detecta nueva información o evolución del caso
    When selecciona la opción "Editar observación"
    Then el sistema permite modificar fecha, síntomas, tratamiento o estado
    And guarda un registro del cambio con fecha y usuario responsable
    And mantiene el historial completo de modificaciones
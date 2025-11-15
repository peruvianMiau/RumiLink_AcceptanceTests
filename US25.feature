Feature: Gestión de cuarentenas
  Como ganadero
  Quiero marcar animales individualmente o por lote como en cuarentena
  Para prevenir la propagación de enfermedades y mantener un historial sanitario claro.

  Scenario: Aplicar cuarentena a un animal
    Given que el usuario detectó un animal enfermo
    When marca el botón "En cuarentena"
    And registra la fecha y la razón
    Then el animal muestra una alerta visual en su ficha en color rojo
    And queda excluido automáticamente de cualquier lista de movimiento.

  Scenario: Finalizar cuarentena
    Given que un animal ha completado su periodo de cuarentena
    When el usuario marca "Cuarentena Finalizada"
    And registra la fecha de alta
    Then la alerta visual desaparece
    And el animal vuelve a ser elegible para movimientos y ventas.
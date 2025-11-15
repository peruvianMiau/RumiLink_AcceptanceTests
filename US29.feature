Feature: Asesoría digital para obtención de certificados
  Como ganadero
  Quiero un asistente digital que me guíe paso a paso para obtener una certificación
  Para simplificar y acelerar mi proceso de formalización.

  Scenario: Mostrar checklist dinámico según certificación seleccionada
    Given que el usuario seleccionó la certificación "Orgánica" en el módulo de Asesoría
    When inicia la guía
    Then el sistema muestra una lista de verificación con documentos y requisitos obligatorios.

  Scenario: Retomar un proceso de certificación en curso
    Given que el usuario inició un proceso de asesoría para una certificación específica
    And el sistema guardó su progreso
    When el usuario vuelve al módulo de Asesoría
    Then el sistema muestra el mensaje "Tienes un proceso de certificación en curso"
    And permite retomar el trámite desde el punto donde quedó, con checklist y plan de pasos actualizados.
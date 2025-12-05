Feature: Enviar Mensaje en la Sección de Contacto
  Como Usuario
  Quiero enviar un mensaje mediante un formulario básico
  Para comunicarme con el equipo del proyecto.

  Background:
    Given que estoy en el Landing Page
    And me desplazo a la sección de Contacto

  Scenario: Enviar formulario con datos válidos
    When ingreso mi nombre, correo y mensaje
    And presiono "Enviar"
    Then debe aparecer un mensaje de confirmación simulado

  Scenario: Validación de correo electrónico
    When ingreso un correo inválido
    And presiono "Enviar"
    Then debe mostrarse un mensaje indicando que el correo no es válido

  Scenario: Campos obligatorios
    When intento enviar el formulario sin completar los datos
    Then debe mostrarse una advertencia sobre los campos requeridos
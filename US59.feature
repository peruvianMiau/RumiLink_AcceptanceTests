Feature: Acceso a Documentos Legales
  Como Usuario
  Quiero acceder a los documentos legales desde el footer
  Para conocer las políticas y condiciones del sistema.

  Background:
    Given que estoy en el Landing Page de AgroNexo

  Scenario: Acceder a Políticas de Privacidad
    When hago clic en el enlace "Políticas de Privacidad"
    Then debo ser redirigido a la sección o documento correspondiente

  Scenario: Acceder a Términos y Condiciones
    When hago clic en el enlace "Términos y Condiciones"
    Then debo ver el documento o página asignada

  Scenario: Descargar Ley de Protección de Datos
    When hago clic en el enlace "Ley de Protección de Datos"
    Then el navegador debe iniciar la descarga del archivo PDF asociado
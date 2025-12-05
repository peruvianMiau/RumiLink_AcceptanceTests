Feature: Acceso a Redes Sociales y Contacto Directo
  Como Visitante
  Quiero acceder a las redes sociales y datos de contacto desde el footer
  Para poder comunicarme fácilmente con el equipo del proyecto.

  Background:
    Given que estoy en el Landing Page de AgroNexo

  Scenario: Acceso a Instagram desde el footer
    When hago clic en el ícono de Instagram
    Then se debe abrir una nueva pestaña con el perfil oficial de AgroNexo

  Scenario: Acceso directo por correo electrónico
    When hago clic en el enlace de correo en el footer
    Then se debe abrir la aplicación de correo con la dirección configurada

  Scenario: Realizar llamada desde un dispositivo móvil
    When presiono el número telefónico en el footer
    Then el dispositivo debe mostrar la interfaz de llamada con el número de contacto

  Scenario: Ver el horario de atención
    When reviso el footer
    Then debe mostrarse el horario de atención asociado al contacto telefónico
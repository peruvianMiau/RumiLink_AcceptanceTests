Feature: Módulo de asistencia y capacitación
  Como ganadero
  Quiero acceder a una sección de ayuda y capacitación dentro de la plataforma
  Para aprender a registrar correctamente la información sanitaria

  Scenario: Visualización de guías para nuevos usuarios
    Given que se registra un nuevo usuario
    When ingresa a la sección "Ayuda"
    Then el sistema muestra guías paso a paso para registrar su ganado y actualizar su historial sanitario

  Scenario: Envío de consultas al soporte técnico
    Given que el usuario tiene un problema técnico
    When accede al soporte
    Then puede enviar su consulta para recibir asistencia del equipo de AgroNexo
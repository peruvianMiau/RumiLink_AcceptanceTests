Feature: Archivo histórico y consulta de lotes finalizados
  Como ganadero
  Quiero archivar lotes finalizados
  Para limpiar mi inventario activo sin perder el historial de trazabilidad

  Background:
    Given que el sistema permite archivar lotes inactivos por venta, baja o fin de ciclo
    And los lotes archivados se almacenan en la sección "Historial de Lotes"
    And los lotes archivados están bloqueados para edición pero permiten consulta y descarga
    And el usuario puede filtrar y buscar lotes archivados por fecha, tipo o motivo
    And el sistema permite reactivar un lote archivado en caso de error
    And el sistema permite descargar un reporte histórico en PDF o Excel

  Scenario: Lote finalizado movido al historial
    Given que un lote ha sido registrado con baja por venta
    When el usuario abre la sección "Histórico/Archivado"
    Then el lote ya no aparece en el inventario activo
    And el lote se muestra disponible en la consulta histórica para auditorías

  Scenario: Reactivar un lote archivado
    Given que un lote está en la sección "Histórico/Archivado"
    And el usuario identifica que fue archivado por error
    When selecciona la opción "Reactivar lote"
    Then el sistema solicita confirmación
    And tras la validación el lote vuelve al inventario activo con todos sus registros intactos
Feature: Acceso rápido a certificados sanitarios para la venta
  Como comerciante formal,
  Quiero acceder rápidamente a los certificados sanitarios digitales,
  Para brindar confianza a mis clientes al momento de la venta.

  Scenario Outline: Visualizar y descargar certificados disponibles
    Given el usuario selecciona un lote de ganado
    When accede a la plataforma
    Then puede visualizar los certificados sanitarios de los animales
    And puede descargarlos en PDF

    Examples: Lotes consultados
      | lote-id |
      | "L001"  |
      | "L045"  |

  Scenario Outline: Intentar generar certificado cuando no está disponible
    Given un animal carece de certificado actualizado
    When el usuario intenta generar el documento
    Then el sistema muestra una alerta indicando que no está disponible
    And especifica que debe ser validado por la autoridad sanitaria

    Examples: Certificados no disponibles
      | animal-id |
      | "A120"    |
      | "A209"    |
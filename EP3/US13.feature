Feature: US13 - Reportes enviados a autoridades
    Como ciudadano
    Quiero que mis reportes lleguen a las autoridades locales 
    Para que se tomen medidas.

Scenario: E1: Envío automático
    Given que un ciudadano publica un reporte validado
    When alcanza cierto nivel de confiabilidad
    Then se envía automáticamente a las autoridades vinculadas.

Scenario: E2: Confirmación de recepción
    Given que el reporte es enviado a autoridades
    When se recibe correctamente
    Then el ciudadano recibe una notificación de confirmación.
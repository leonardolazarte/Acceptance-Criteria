Feature: US01 - Reportar robo
    Como usuario de la aplicación de seguridad
    Quiero poder reportar un robo de manera rápida y sencilla
    Para que las autoridades puedan tomar acción inmediata.

Scenario: E1: Reporte exitoso
    Given que un ciudadano presencia un robo
    When llena un formulario breve con tipo de incidente y ubicación
    Then el reporte se publica en el mapa comunitario en tiempo real.

Scenario: E2: Reporte fallido
    Given que un ciudadano intenta reportar un robo sin conexión a internet
    When completa la información
    Then el reporte se guarda en modo borrador y se enviará automáticamente al recuperar señal.
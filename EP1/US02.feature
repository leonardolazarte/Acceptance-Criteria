Feature: US02 - Adjuntar evidencia
    Como ciudadano
    Quiero adjuntar fotos o videos al reporte
    Para evidenciar el incidente.

Scenario: E1: Evidencia aceptada
    Given que el ciudadano adjunta fotos o videos en el formulario de reporte
    When envía el reporte
    Then el sistema guarda los archivos como parte del registro.

Scenario: E2: Evidencia no compatible
    Given que un ciudadano adjunta un archivo de formato no permitido
    When intenta enviarlo
    Then la aplicación muestra un mensaje de error indicando los formatos válidos.
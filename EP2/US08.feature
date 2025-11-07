Feature: US08 - Ver mapa en tiempo real
    Como ciudadano
    Quiero un mapa en tiempo real con los incidentes más recientes
    Para identificar zonas de riesgo.

Scenario: E1: Visualización actualizada
    Given que un ciudadano abre el mapa
    When hay nuevos incidentes registrados
    Then el mapa se actualiza automáticamente con los nuevos íconos.

Scenario: E2: Sin incidentes
    Given que un ciudadano abre el mapa
    When no hay incidentes recientes
    Then el sistema muestra el mapa limpio con un mensaje “Sin reportes”.
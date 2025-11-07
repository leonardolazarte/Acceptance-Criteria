Feature: US14 - Estadísticas semanales
    Como ciudadano
    Quiero ver estadísticas semanales de mi barrio 
    Para identificar si los delitos están aumentando.

Scenario: E1: Datos disponibles
    Given que un ciudadano abre la sección estadísticas
    When consulta la última semana
    Then ve el número de incidentes agrupados por categoría.

Scenario: E2: Sin datos recientes
    Given que un ciudadano consulta estadísticas
    When no hubo incidentes en la semana
    Then el sistema muestra “0 reportes registrados”.
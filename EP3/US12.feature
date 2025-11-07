Feature: US12 - Editar o eliminar un reporte enviado
    Como ciudadano
    Quiero acceder a un chat comunitario seguro 
    Para coordinar acciones con mis vecinos.

Escenario: E1: Editar un reporte enviado
    Given que el usuario visualiza su historial de reportes
    When selecciona “Editar”
    Then el sistema permite modificar los campos del reporte antes de volver a enviarlo.

Escenario: E2: Eliminar un reporte enviado
    Given que el usuario visualiza su historial
    When selecciona “eliminar”
    Then el sistema eliminará el reporte.
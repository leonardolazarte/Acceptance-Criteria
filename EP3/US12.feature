Feature: US12 - Editar o eliminar un reporte enviado
    Como ciudadano
    Quiero acceder a un chat comunitario seguro 
    Para coordinar acciones con mis vecinos.

Escenario: E1: Editar un reporte enviado
    Given que el usuario visualiza su historial de reportes
    When selecciona “Editar”
    Then el sistema permite modificar los campos del reporte antes de volver a enviarlo.

    Examples: INPUTS:
        | campo_a_modificar | nuevo_valor               |
        | Descripción       | "Descripción actualizada" |
        | Ubicación         | "Calle Falsa 123"         |
    
    Examples: OUTPUTS:
        | estado_reporte_modificado |
        | Modificado               |
        | Modificado               |

Escenario: E2: Eliminar un reporte enviado
    Given que el usuario visualiza su historial
    When selecciona “eliminar”
    Then el sistema eliminará el reporte.

    Examples: INPUTS:
        | reporte_a_eliminar |
        | Reporte ID 45     |
        | Reporte ID 78     |
        
    Examples: OUTPUTS:
        | estado_reporte_eliminado |
        | Eliminado              |
        | Eliminado              |

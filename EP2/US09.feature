Feature: US09 - Notificaciones de autoridades
    Como ciudadano
    Quiero recibir notificaciones de autoridades o moderadores 
    Para estar al tanto de medidas de seguridad.

Scenario: E1: Notificación oficial
    Given que una autoridad envía un aviso de seguridad
    When llega al sistema
    Then el ciudadano recibe la notificación como “mensaje oficial”.
    Examples: INPUTS:
        | tipo_notificación | contenido                      |
        | Oficial           | Alerta de seguridad en zona X  |
        | Oficial           | Recomendaciones por evento Y   |
    Examples: OUTPUTS:
        | notificación_recibida           |

Scenario: E2: Distinción visual
    Given que el ciudadano recibe varias notificaciones
    When una es oficial
    Then aparece destacada con un color y sello diferente.

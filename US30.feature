Característica: US30 - Recibir alertas verificadas
  Como ciudadano, 
  quiero recibir alertas que hayan sido verificadas por moderadores para confiar en la información.

  Escenario: E1: Ciudadano recibe una alerta de incidente verificado
    Given que un ciudadano está suscrito a las "alertas de Mi Barrio"
    And un moderador acaba de "Verificar" un "reporte de Robo" en esa zona
    When esto ocurre
    Then el ciudadano recibe una notificación push "Alerta Verificada: Robo en Mi Barrio".

    Examples: INPUTS:
        | reporte_verificado | zona_reporte |
        | "Robo (ID 205)"    | "Mi Barrio"  |
    
    Examples: OUTPUTS:
        | notificacion_push_recibida         |
        | "Alerta Verificada: Robo en Mi Barrio" |
Característica: US25 - Coordinación de respuestas comunitarias
  Como moderador, 
  quiero coordinar acciones con vecinos y autoridades para atender emergencias.

  Escenario: E1: Coordinar respuesta a un poste caído
    Given que el moderador tiene un "reporte validado de Poste de luz caído"
    When usa la función "Coordinar Respuesta"
    Then puede enviar una notificación a "Autoridad Eléctrica" y "Grupo Vecinos Zona A".

    Examples: INPUTS:
        | reporte_id | accion_coordinar       | destinatarios_seleccionados                |
        | "Reporte 115" | "Enviar Notificación"  | ["Autoridad Eléctrica", "Grupo Vecinos Zona A"] |
    
    Examples: OUTPUTS:
        | estado_notificacion_AE  | estado_notificacion_Vecinos |
        | "Enviada"               | "Enviada"                   |
Característica: US21 - Validación de reportes por moderadores
  Como moderador, 
  quiero validar reportes antes de su publicación para asegurar la veracidad de la información.

  Escenario: E1: Moderador aprueba un reporte válido
    Given que el moderador tiene un "reporte pendiente de Ruido excesivo"
    And el reporte contiene "descripción clara y foto"
    When presiona el botón "Aprobar y Publicar"
    Then el reporte se hace visible en el mapa público.

    Examples: INPUTS:
        | reporte_id | accion_moderador    |
        | "Reporte 77" | "Aprobar y Publicar" |
    
    Examples: OUTPUTS:
        | estado_reporte_77   |
        | "Publicado"         |
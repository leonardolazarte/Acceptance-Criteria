Característica: US18 - Generación de mapas de calor
  Como investigadora, 
  quiero generar mapas de calor para identificar patrones espaciales de criminalidad.

  Escenario: E1: Generar un mapa de calor
    Given que la investigadora está en la sección de "Análisis Espacial"
    And aplica filtros de "tipo de incidente" y "rango de fechas"
    When presiona el botón "Generar Mapa de Calor"
    Then el sistema muestra un mapa con las zonas de calor.

    Examples: INPUTS:
        | filtro_tipo_incidente | filtro_fechas         |
        | "Robo"                | "Últimos 6 meses"     |
    
    Examples: OUTPUTS:
        | visualizacion_mapa      |
        | "Mapa de calor renderizado" |
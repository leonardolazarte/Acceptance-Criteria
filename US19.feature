Característica: US19 - Comparación temporal de incidentes
  Como investigadora, 
  quiero comparar tasas de incidentes entre diferentes períodos para analizar tendencias.

  Escenario: E1: Comparar tasas de incidentes
    Given que la investigadora está en la sección de "Estadísticas"
    When selecciona el "Período A (Ene-2024)" y "Período B (Ene-2025)" para "Robos"
    Then el sistema muestra un gráfico comparativo de las tasas.

    Examples: INPUTS:
        | periodo_A    | periodo_B    | tipo_incidente |
        | "Ene-2024"   | "Ene-2025"   | "Robos"        |
    
    Examples: OUTPUTS:
        | resultado_comparativo     |
        | "Gráfico de barras/líneas" |
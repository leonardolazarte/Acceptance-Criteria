Característica: US20 - Integración de reportes ciudadanos con estadísticas oficiales
  Como investigadora, 
  quiero contrastar datos ciudadanos con los del INEI para validar información

  Escenario: E1: Contrastar datos de reportes ciudadanos y del INEI
    Given que la investigadora está analizando "Hurtos en Surco"
    When carga el "reporte ciudadano" y la "base de datos oficial del INEI"
    Then el sistema muestra una vista comparativa de ambas fuentes.

    Examples: INPUTS:
        | fuente_A             | fuente_B                 |
        | "Reporte Ciudadano"  | "Datos INEI (Hurtos)"    |
    
    Examples: OUTPUTS:
        | vista_generada            |
        | "Tabla/Gráfico comparativo" |
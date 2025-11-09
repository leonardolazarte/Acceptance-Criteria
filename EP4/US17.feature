Característica: US17 - Descargar información en diferentes formatos
  Como investigador, 
  quiero descargar reportes en Excel y PDF para facilitar la inclusión de datos en mis proyectos.

  Escenario: E1: Descargar reporte en formato PDF
    Given que el investigador tiene un reporte "Incidentes 2024" en pantalla
    When selecciona la opción "Descargar como PDF"
    Then el sistema genera el archivo y lo descarga.
    
    Examples: INPUTS:
        | formato_seleccionado |
        | "PDF"                |

    Examples: OUTPUTS:
        | archivo_descargado         |
        | "reporte_incidentes.pdf"   |

  Escenario: E2: Descargar reporte en formato Excel
    Given que el investigador tiene un reporte "Incidentes 2024" en pantalla
    When selecciona la opción "Descargar como Excel"
    Then el sistema genera el archivo y lo descarga.

    Examples: INPUTS:
        | formato_seleccionado |
        | "Excel"              |

    Examples: OUTPUTS:
        | archivo_descargado         |
        | "reporte_incidentes.xlsx"  |
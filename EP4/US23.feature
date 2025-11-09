Característica: US23 - Reportes priorizados por nivel de riesgo
  Como moderador, 
  quiero clasificar los incidentes por gravedad para que las autoridades atiendan primero los más críticos.

  Escenario: E1: Clasificar un incidente como "Alta Prioridad"
    Given que el moderador recibe un "reporte de Incendio en progreso"
    When asigna la clasificación "Nivel 3 - Crítico" al reporte
    Then el reporte aparece al inicio de la lista de gestión de autoridades.

    Examples: INPUTS:
        | reporte_id | clasificacion_asignada |
        | "Reporte 91" | "Nivel 3 - Crítico"    |
    
    Examples: OUTPUTS:
        | prioridad_reporte_91 |
        | "Alta"               |
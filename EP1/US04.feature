Feature: US04 - Reportar de forma anónima
    Como ciudadano
    Quiero poder denunciar de forma anónima 
    Para no sentirme en riesgo.
    
Scenario: E1: Reporte anónimo
    Given que un ciudadano selecciona la opción “anónimo”
    When publica un reporte
    Then su identidad no se muestra a otros usuarios.

Scenario: E2: Seguimiento interno
    Given que un reporte anónimo es publicado
    When las autoridades lo consultan
    Then pueden verlo sin conocer la identidad del autor, pero con un ID interno de referencia.
Feature: US03 - Validación comunitaria
    Como ciudadano
    Quiero que mi reporte sea validado por otros vecinos 
    Para aumentar su credibilidad.
    
Scenario: E1:Votos positivos
    Given que un ciudadano publica un reporte
    When otros vecinos lo confirman
    Then el reporte muestra un indicador de confiabilidad creciente.

Scenario: E2:Votos negativos
    Given que un reporte es marcado como falso por varios vecinos
    When se alcanza un umbral de votos negativos
    Then el reporte se oculta temporalmente hasta ser revisado por un moderador.
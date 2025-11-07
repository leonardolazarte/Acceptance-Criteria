Feature: US11 - Validar reportes de otros vecinos
    Como ciudadano
    Quiero validar reportes de otros vecinos 
    Para ayudar a filtrar información verdadera.
    
Scenario: E1: Voto positivo
    Given que un ciudadano lee un reporte
    When confirma que es verdadero
    Then su voto se suma al nivel de confiabilidad del reporte.

    Examples: INPUTS:
        | voto_confirmación |
        | Positivo          |

    Examples: OUTPUTS:
        | aumento_confiabilidad |
        | Sí                    |

Scenario: E2: Voto negativo
    Given que un ciudadano lee un reporte
    When lo considera falso
    Then su voto resta credibilidad al mismo.

    Examples: INPUTS:
        | voto_confirmación |
        | Negativo          |
    Examples: OUTPUTS:
        | disminución_confiabilidad |
        | Sí                        |

Feature: US06 - Recibir alertas cercanas
    Como ciudadano
    Quiero recibir una alerta en mi celular cuando ocurre un incidente cerca de mi casa 
    Para estar prevenido.

Scenario: E1: Alerta geolocalizada
    Given que un incidente ocurre en un radio de 500 metros
    When se publica el reporte
    Then el ciudadano recibe una notificación inmediata en su celular.
    
    Examples: INPUTS:
        | distancia_incidente |
        | 300 metros          |
        | 450 metros          |

    Examples: OUTPUTS:
        | notificación_recibida |
        | Sí                    |
        | Sí                    |

Scenario: E2: Fuera del rango
    Given que un incidente ocurre en otra zona
    When se publica el reporte
    Then el ciudadano no recibe alerta al no estar dentro del rango definido.

    Examples: INPUTS:
        | distancia_incidente |
        | 800 metros          |
        | 1 km                |

    Examples: OUTPUTS:
        | notificación_recibida |
        | No                    |
        | No                    |

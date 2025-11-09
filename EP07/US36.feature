Feature: US36 - Manejo de múltiples usuarios concurrentes
  Como administrador quiero que la plataforma soporte un alto número de usuarios simultáneos
  para mantener su funcionamiento estable.

  Scenario: E1 - Rendimiento de la App
    Given que hay 1000 usuarios activos
    When todos utilizan el mapa de incidentes
    Then la aplicación mantiene su rendimiento estable

    Examples: INPUTS
      | usuarios_activos | función_usada |
      | 1000             | Ver mapa      |
      | 1200             | Consultar reportes |

    Examples: OUTPUTS
      | estado_app | tiempo_respuesta |
      | Estable    | < 2 segundos     |
      | Estable    | < 2 segundos     |

  Scenario: E2 - Mejora del servidor automática
    Given que el tráfico aumenta rápidamente
    When se supera el límite previsto
    Then el sistema escala automáticamente los recursos del servidor

    Examples: INPUTS
      | tráfico_usuarios | límite_previsto |
      | 1500             | 1000            |
      | 2500             | 2000            |

    Examples: OUTPUTS
      | acción_servidor        | resultado          |
      | Escalar recursos       | Rendimiento estable |
      | Escalar recursos       | Rendimiento estable |
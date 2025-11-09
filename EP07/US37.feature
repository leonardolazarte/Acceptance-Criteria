Feature: US37 - Optimización del tiempo de respuesta
  Como usuario quiero que las consultas al servidor se respondan rápidamente
  para no perder tiempo al navegar.

  Scenario: E1 - Tiempo de respuesta de estadísticas
    Given que el usuario solicita ver estadísticas
    When el sistema consulta la base de datos
    Then responde en menos de 2 segundos

    Examples: INPUTS
      | solicitud_usuario | tipo_dato  |
      | Ver estadísticas  | Mensuales  |
      | Ver estadísticas  | Anuales    |

    Examples: OUTPUTS
      | tiempo_respuesta | estado_respuesta |
      | 1.8 s            | Correcta         |
      | 1.9 s            | Correcta         |

  Scenario: E2 - Tiempo de respuesta de reportes
    Given que el usuario solicita ver reportes
    When el sistema procesa la consulta
    Then la respuesta llega en menos de 5 segundos

    Examples: INPUTS
      | solicitud_usuario | cantidad_reportes |
      | Ver reportes      | 20                |
      | Ver reportes      | 50                |

    Examples: OUTPUTS
      | tiempo_respuesta | estado_respuesta |
      | 4.2 s            | Correcta         |
      | 4.7 s            | Correcta         |
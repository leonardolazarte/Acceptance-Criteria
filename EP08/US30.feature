Feature: US30 - Recibir alertas verificadas
  Como ciudadano quiero recibir alertas que hayan sido verificadas por moderadores
  para confiar en la información.

  Scenario: E1 - Alerta validada previamente
    Given que un reporte ciudadano ha sido generado
    And un moderador valida la información
    When la alerta es aprobada
    Then el ciudadano recibe una notificación confirmada en su celular

    Examples: INPUTS
      | tipo_reporte | ubicación         | validado |
      | Robo          | Av. Perú 1020     | Sí       |
      | Accidente     | Jr. Lima 250      | Sí       |

    Examples: OUTPUTS
      | estado_alerta   |
      | Notificación OK |
      | Notificación OK |

  Scenario: E2 - Filtro de noticias falsas
    Given que circula un reporte sospechoso en la comunidad
    When el sistema detecta inconsistencias
    Then la alerta se etiqueta como no verificada

    Examples: INPUTS
      | tipo_reporte | coincidencias | validado |
      | Robo falso   | 0%            | No       |

    Examples: OUTPUTS
      | etiqueta        |
      | No verificada   |

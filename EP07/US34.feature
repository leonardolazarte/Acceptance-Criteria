Feature: US34 - Alta disponibilidad del sistema
  Como ciudadano quiero que la plataforma esté disponible las 24 horas
  para poder reportar incidentes en cualquier momento.

  Scenario: E1 - Sistema en mantenimiento
    Given que el sistema está en mantenimiento
    When un usuario intenta acceder a la plataforma
    Then se muestra un aviso temporal indicando que algunas funciones no están disponibles

    Examples: INPUTS
      | estado_sistema | acción_usuario        |
      | Mantenimiento  | Acceder a la web/app  |
      | Mantenimiento  | Enviar reporte        |

    Examples: OUTPUTS
      | mensaje_aviso                                      |
      | "Mantenimiento: algunas funciones no están disponibles" |
      | "Mantenimiento: algunas funciones no están disponibles" |

  Scenario: E2 - Navegar sin interrupciones
    Given que el sistema opera normalmente
    When un usuario accede a la plataforma
    Then la aplicación responde sin interrupciones

    Examples: INPUTS
      | estado_sistema | acción_usuario       |
      | Normal         | Abrir mapa           |
      | Normal         | Consultar reportes   |

    Examples: OUTPUTS
      | estado_aplicacion |
      | Operativa         |
      | Operativa         |
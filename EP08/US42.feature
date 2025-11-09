Feature: US42 - Interacción dinámica en la sección de Servicios
  Como visitante de la Landing Page quiero acceder a la sección de servicios
  y visualizar información interactiva sobre cada uno.

  Scenario: E1 - Acceso a la sección Servicios
    Given que el usuario se encuentra en la página principal
    When hace clic en el botón “Servicios” del menú de navegación
    Then la página redirige hacia la sección de servicios mostrando las tarjetas disponibles

    Examples: INPUTS
      | botón     | destino   |
      | Servicios | Sección   |

    Examples: OUTPUTS
      | sección_cargada |
      | Servicios       |

  Scenario: E2 - Interacción con los cuadros de servicio
    Given que el usuario está en la sección de servicios
    When coloca el cursor sobre un cuadro de servicio
    Then se despliega el texto explicativo con la descripción del servicio

    Examples: INPUTS
      | servicio   | acción          |
      | Alertas    | Hover con ratón |

    Examples: OUTPUTS
      | texto_visible |
      | Sí             |
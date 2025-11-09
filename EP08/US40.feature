Feature: US40 - Navegar fácilmente entre secciones
  Como visitante quiero acceder a las secciones principales desde el menú
  para explorar la web cómodamente.

  Scenario: E1 - Navegación por menú en PC
    Given que el usuario pasa el cursor por el menú
    When selecciona una opción
    Then se dirige a la sección correspondiente

    Examples: INPUTS
      | dispositivo | sección     |
      | PC          | Servicios   |
      | PC          | Nosotros    |

    Examples: OUTPUTS
      | navegación_correcta |
      | Sí                  |

  Scenario: E2 - Navegación desde móvil
    Given que el usuario está en un dispositivo móvil
    When pulsa el icono del menú
    Then se despliega el panel lateral con las secciones disponibles

    Examples: INPUTS
      | dispositivo | acción         |
      | Móvil       | Click en menú  |

    Examples: OUTPUTS
      | panel_visible |
      | Sí             |
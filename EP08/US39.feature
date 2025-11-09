Feature: US39 - Ver presentación general de Usafe
  Como visitante quiero conocer la descripción de la plataforma
  para entender su propósito y beneficios.

  Scenario: E1 - Acceso a la página web desde PC
    Given que el visitante accede a la página principal
    When hace scroll hacia abajo
    Then visualiza un resumen del sistema y su propósito

    Examples: INPUTS
      | dispositivo | acción      |
      | PC          | Scroll Down |

    Examples: OUTPUTS
      | sección_visible |
      | Resumen Usafe   |

  Scenario: E2 - Acceso desde dispositivo móvil
    Given que el visitante entra desde un teléfono móvil
    When la página carga
    Then el texto se adapta correctamente al formato responsive

    Examples: INPUTS
      | dispositivo | resolución |
      | Móvil       | 360x800    |

    Examples: OUTPUTS
      | formato_adaptado |
      | Sí               |
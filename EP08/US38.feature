Feature: US38 - Adaptación a distintos navegadores
  Como visitante de la web quiero que la landing page funcione correctamente
  en cualquier navegador, para evitar errores de visualización.

  Scenario: E1 - Visualización en Chrome
    Given que el visitante usa el navegador Chrome
    When accede al sitio
    Then la página se visualiza correctamente

    Examples: INPUTS
      | navegador |
      | Chrome    |

    Examples: OUTPUTS
      | estado_página |
      | Correcta      |

  Scenario: E2 - Visualización en Firefox
    Given que el visitante usa el navegador Firefox
    When carga el sitio
    Then la funcionalidad se mantiene sin fallos

    Examples: INPUTS
      | navegador |
      | Firefox   |

    Examples: OUTPUTS
      | estado_página |
      | Correcta      |
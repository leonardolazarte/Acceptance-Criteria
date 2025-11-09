Feature: US41 - Conocer la misión y visión del proyecto
  Como visitante quiero conocer la misión y visión de Usafe
  para entender su propósito social.

  Scenario: E1 - Visualización de misión y visión
    Given que el usuario accede a la sección “Nosotros”
    When navega por la página
    Then visualiza los textos institucionales de misión y visión

    Examples: INPUTS
      | sección   | acción  |
      | Nosotros  | Scroll  |

    Examples: OUTPUTS
      | textos_visibles |
      | Sí              |

  Scenario: E2 - Desplazamiento con botones
    Given que el usuario está en la sección “Nosotros”
    When hace clic en los botones pequeños de desplazamiento
    Then cambia la imagen mostrada

    Examples: INPUTS
      | acción        | botón_presionado |
      | Clic en botón | Siguiente        |

    Examples: OUTPUTS
      | imagen_cambiada |
      | Sí              |
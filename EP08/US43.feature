Feature: US43 - Ver demostración visual de la app y QR
  Como usuario quiero ver imágenes de la app y un código QR
  para conocer de qué trata y poder descargarla.

  Scenario: E1 - Visualización de imágenes de la App
    Given que el usuario hace clic en la sección “App”
    When se carga el contenido
    Then se muestran las imágenes de la aplicación

    Examples: INPUTS
      | sección | acción  |
      | App     | Clic    |

    Examples: OUTPUTS
      | imágenes_visibles |
      | Sí                |

  Scenario: E2 - Visualización del QR de descarga
    Given que el usuario se encuentra en la sección “App”
    When desplaza hacia abajo
    Then aparece el código QR de descarga

    Examples: INPUTS
      | acción | desplazamiento |
      | Scroll | Hacia abajo    |

    Examples: OUTPUTS
      | qr_visible |
      | Sí         |
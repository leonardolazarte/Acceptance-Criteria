Feature: US31 - Optimización de rendimiento en carga del mapa
  Como usuario quiero que el mapa de incidentes cargue rápidamente
  para visualizar la información sin demoras.

  Scenario: E1 - Carga del mapa con conexión estable
    Given que el usuario tiene conexión estable
    When abre el mapa de incidentes
    Then los puntos deben mostrarse en menos de 3 segundos

    Examples: INPUTS
      | conexión | tipo_dispositivo |
      | Estable  | Android          |
      | Estable  | Web              |

    Examples: OUTPUTS
      | tiempo_carga |
      | < 3s         |
      | < 3s         |

  Scenario: E2 - Carga progresiva con conexión lenta
    Given que el usuario tiene conexión lenta
    When accede al mapa
    Then el mapa carga progresivamente mostrando primero su zona

    Examples: INPUTS
      | conexión | zona_usuario   |
      | Lenta     | San Miguel     |

    Examples: OUTPUTS
      | carga_inicial | zonas_secundarias |
      | Zona usuario  | Posterior         |
Feature: US35 - Código modular y fácil de actualizar
  Como desarrollador quiero que el sistema esté estructurado modularmente
  para facilitar las futuras actualizaciones.

  Scenario: E1 - Modificación de código
    Given que se requiere agregar un nuevo tipo de incidente
    When se modifica el código del módulo correspondiente
    Then la actualización se aplica sin afectar otras secciones

    Examples: INPUTS
      | acción                | módulo_modificado | nuevo_tipo_incidente |
      | Agregar nuevo tipo    | Reportes          | Robo de vehículo     |
      | Agregar nuevo tipo    | Alertas           | Emergencia médica    |

    Examples: OUTPUTS
      | estado_sistema | mensaje_confirmación             |
      | Estable        | "Actualización aplicada con éxito" |
      | Estable        | "Actualización aplicada con éxito" |

  Scenario: E2 - Cambios sin errores
    Given que se realiza mantenimiento del sistema
    When se actualiza un módulo
    Then no se generan errores en el resto del sistema

    Examples: INPUTS
      | acción        | módulo_modificado |
      | Mantenimiento | Autenticación     |
      | Mantenimiento | Geolocalización   |

    Examples: OUTPUTS
      | errores_detectados | estado_general |
      | 0                  | Operativo      |
      | 0                  | Operativo      |

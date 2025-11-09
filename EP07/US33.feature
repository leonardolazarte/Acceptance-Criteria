Feature: US33 - Compatibilidad multiplataforma
  Como usuario quiero que la aplicación funcione en Android e iOS
  para acceder desde cualquier dispositivo.

  Scenario: E1 - Ejecución en Android
    Given que el usuario instala la app en Android
    When la abre
    Then todas las funciones operan correctamente

    Examples: INPUTS
      | sistema_operativo | versión |
      | Android           | 12.0    |

    Examples: OUTPUTS
      | estado_funcionalidad |
      | Correcta              |

  Scenario: E2 - Ejecución en iOS
    Given que el usuario instala la app en iOS
    When accede
    Then la interfaz se adapta sin errores

    Examples: INPUTS
      | sistema_operativo | versión |
      | iOS               | 17.0    |

    Examples: OUTPUTS
      | adaptación_interfaz |
      | Exitosa             |

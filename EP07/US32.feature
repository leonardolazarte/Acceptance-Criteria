Feature: US32 - Protección de datos personales
  Como ciudadano quiero que mis datos estén cifrados
  para mantener mi información segura y privada.

  Scenario: E1 - Almacenamiento cifrado
    Given que el usuario inicia sesión correctamente
    When el sistema guarda su información
    Then los datos se almacenan de forma cifrada

    Examples: INPUTS
      | usuario | contraseña |
      | juan123 | 12345      |

    Examples: OUTPUTS
      | cifrado | estado_almacenamiento |
      | SHA256  | Correcto              |

  Scenario: E2 - Intento de acceso no autorizado
    Given que ocurre un intento de acceso no autorizado
    When el sistema lo detecta
    Then bloquea la sesión y notifica al usuario

    Examples: INPUTS
      | usuario | intentos |
      | juan123 | 5        |

    Examples: OUTPUTS
      | estado_sesion | notificación     |
      | Bloqueada     | Usuario alertado |
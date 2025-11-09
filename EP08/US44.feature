Feature: US44 - Enviar mensaje de contacto
  Como visitante quiero enviar un mensaje al equipo de Usafe
  para realizar consultas o sugerencias.

  Scenario: E1 - Envío exitoso de mensaje
    Given que el usuario llena todos los campos del formulario
    When presiona el botón “Enviar”
    Then el mensaje se registra exitosamente

    Examples: INPUTS
      | nombre | correo              | mensaje            |
      | Ana    | ana@mail.com        | Consulta general   |
      | Luis   | luis@gmail.com      | Sugerencia visual  |

    Examples: OUTPUTS
      | estado_envío |
      | Exitoso      |
      | Exitoso      |

  Scenario: E2 - Error por campos vacíos
    Given que el usuario deja uno o más campos vacíos
    When intenta enviar el mensaje
    Then aparece un mensaje de error

    Examples: INPUTS
      | nombre | correo | mensaje |
      | Ana    |        | Hola    |
      |        | ana@x  | Hola    |

    Examples: OUTPUTS
      | estado_envío | mensaje_error            |
      | Fallido      | Campos incompletos       |
      | Fallido      | Correo inválido          |
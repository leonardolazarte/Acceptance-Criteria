Característica: US26 - Autenticación de usuarios
  Como ciudadano, 
  quiero ingresar a la plataforma con autenticación segura para proteger mi cuenta.

  Escenario: E1: Inicio de sesión exitoso
    Given que un ciudadano registrado está en la página de "Login"
    When ingresa su usuario "ciudadano@mail.com" y su contraseña "clave_segura_123"
    Then accede a su panel de control personal.

    Examples: INPUTS:
        | usuario_ingresado    | contrasena_ingresada |
        | "ciudadano@mail.com" | "clave_segura_123"   |
    
    Examples: OUTPUTS:
        | resultado_login       |
        | "Redirección a /panel" |
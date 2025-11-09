Característica: US28 - Validar identidad en el registro
  Como ciudadano, 
  quiero validar mi identidad en el registro para evitar cuentas falsas.

  Escenario: E1: Registro con validación de identidad
    Given que un nuevo usuario está en la página de "Registro"
    When ingresa sus datos personales y su "número de DNI"
    Then el sistema realiza una "validación de identidad (ej. con RENIEC)"
    And la cuenta se crea con estado "Verificado".

    Examples: INPUTS:
        | dni_ingresado |
        | "12345678"    |
    
    Examples: OUTPUTS:
        | resultado_validacion | estado_cuenta   |
        | "Identidad Válida"   | "Verificado"    |
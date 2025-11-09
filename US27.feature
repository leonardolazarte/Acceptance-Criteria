Característica: US27 - Proteger mis datos personales
  Como ciudadano, 
  quiero que mis datos estén cifrados para prevenir filtraciones de información.

  Escenario: E1: Verificar protección de datos (No Funcional)
    Given que un ciudadano ha completado su perfil con su "contraseña"
    When un "administrador de base de datos" consulta la tabla de usuarios
    Then la "contraseña" se muestra cifrada (hash) e ilegible.

    Examples: INPUTS:
        | dato_sensible       | accion_DBA            |
        | "mi_clave_secreta"  | "SELECT pass FROM users" |
    
    Examples: OUTPUTS:
        | valor_en_BD                     |
        | "a1b2c3d4e5f6... (hash)"        |
Característica: US29 - Configurar niveles de acceso
  Como administrador, 
  quiero configurar niveles de acceso para que cada usuario solo pueda ver lo que le corresponde.

  Escenario: E1: Asignar rol de "Moderador" a un usuario
    Given que el "Admin" está en el panel de "Gestión de Usuarios"
    When busca al usuario "nuevo_empleado" y le asigna el rol "Moderador"
    Then "nuevo_empleado" obtiene permisos para validar reportes, pero no para configurar el sistema.

    Examples: INPUTS:
        | usuario_objetivo | rol_asignado |
        | "nuevo_empleado" | "Moderador"  |
    
    Examples: OUTPUTS:
        | permisos_puede        | permisos_no_puede      |
        | "validar reportes"    | "configurar sistema"   |
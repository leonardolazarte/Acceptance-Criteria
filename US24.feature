Característica: US24 - Acceso diferenciado para autoridades
  Como policía, 
  quiero acceder a la plataforma con permisos especiales para visualizar y gestionar incidentes críticos.

  Escenario: E1: Policía accede a información no pública
    Given que un usuario con rol "Policía" ha iniciado sesión
    When ingresa al "reporte de un Asalto (ID 102)"
    Then puede visualizar los datos personales del denunciante y la evidencia sin anonimizar.

    Examples: INPUTS:
        | rol_usuario | reporte_id_accedido |
        | "Policía"   | "Reporte ID 102"    |
    
    Examples: OUTPUTS:
        | datos_visibles          |
        | "Nombre, DNI, Teléfono" |
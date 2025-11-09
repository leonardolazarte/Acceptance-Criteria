Característica: US16 - Acceso a datos anonimizados
  Como investigadora, 
  quiero acceder a datos anonimizados de incidentes para garantizar la confidencialidad 
  y utilizar la información en mis estudios.

  Escenario: E1: Investigadora accede a datos anonimizados
    Given que la investigadora ha iniciado sesión con sus permisos
    When solicita los "datos de incidentes del último mes"
    Then el sistema procesa la solicitud y entrega los datos sin información personal.

    Examples: INPUTS:
        | solicitud_datos                 |
        | "Incidentes últimos 30 días"      |
    
    Examples: OUTPUTS:
        | datos_recibidos                 |
        | "Datos anonimizados (JSON/CSV)" |
Característica: US22 - Canal de comunicación con la policía local
  Como ciudadano, 
  quiero que mis reportes sean notificados a la policía para acelerar la respuesta.

  Escenario: E1: Reporte de incidente grave notificado a la policía
    Given que el ciudadano está creando un "reporte de Asalto a mano armada"
    When envía el reporte marcándolo como "Grave"
    Then el sistema notifica automáticamente a la comisaría local
    And el reporte recibe una marca de "Notificado a la policía".

    Examples: INPUTS:
        | tipo_reporte            | gravedad |
        | "Asalto a mano armada"  | "Grave"  |
    
    Examples: OUTPUTS:
        | estado_notificacion_policia | marca_reporte               |
        | "Enviada"                   | "Notificado a la policía"   |
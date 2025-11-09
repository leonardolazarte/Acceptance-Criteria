Característica: US15 - Botón de pánico
  Como ciudadano, 
  quiero contar con un botón de pánico que conecte directamente con la policía o serenazgo

  Escenario: E1: Activación de botón de pánico
    Given que el ciudadano visualiza la aplicación en una emergencia
    When presiona el botón de "Pánico"
    Then el sistema envía una alerta a la policía
    And comparte la ubicación del ciudadano.

    Examples: INPUTS:
        | boton_presionado | ubicacion_usuario   |
        | "Pánico"         | "-12.123, -77.456"  |
    
    Examples: OUTPUTS:
        | estado_alerta_policia | estado_alerta_serenazgo |
        | "Enviada"             | "Enviada"               |
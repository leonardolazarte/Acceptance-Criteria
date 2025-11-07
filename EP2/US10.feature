Feature: US10 - Modo emergencia
    Como ciudadano
    Quiero poder activar un “modo emergencia” 
    Para que avise a mis contactos en caso de peligro.

Scenario: E1: Emergencia activada
    Given que un ciudadano presiona el botón de pánico
    When lo confirma
    Then sus contactos seleccionados reciben una alerta inmediata con su ubicación.

Scenario: E2: Emergencia desactivada
    Given que un ciudadano activa el modo emergencia por error
    When lo cancela en menos de 10 segundos
    Then no se envía la alerta a los contactos.
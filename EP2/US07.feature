Feature: US07 - Personalizar alertas
    Como ciudadano
    Quiero personalizar qué tipos de alertas recibir 
    Para no saturarme de información.
    
Scenario: E1: Selección de categorías
    Given que un ciudadano configura su perfil
    When selecciona solo “robos” y “acoso”
    Then  solo recibe alertas de esas categorías.

Scenario: E2: Todas las categorías
    Given que un ciudadano no configura filtros
    When se publican incidentes
    Then recibe todas las alertas por defecto.
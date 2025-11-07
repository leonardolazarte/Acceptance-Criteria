Feature: US05 - Historial de reportes
    Como ciudadano
    Quiero ver un historial de mis reportes 
    Para dar seguimiento a los casos.

Scenario: E1: Historial disponible
 Given que un ciudadano accede a su perfil
 When consulta la sección “Mis reportes”
 Then ve la lista de incidentes reportados con fecha y estado.

Scenario: E2: Sin reportes
 Given que un ciudadano accede a su perfil
 When nunca ha hecho un reporte
 Then el sistema muestra un mensaje “Aún no tienes reportes registrados”.
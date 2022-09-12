Feature: Peticion tipo Post

  Background:
    * configure ssl = true
    Given url 'https://postman-echo.com'

  Scenario:
    Given path '/post'
    When request {"nombre": "Brenda", "apellido": "Aguilar", "edad" : 22, "url" : "https://postman-echo.com/post"}
    Then method POST
    And status 200

    * print 'nombre: ' + response.data.nombre
    * print 'apellido: ' + response.data.apellido
    * print 'telefono: ' + response.data.telefono
    * print 'correo: ' + response.data.correo
    * print 'usuario: ' + response.data.usuario
    * print 'edad: ' + response.data.edad


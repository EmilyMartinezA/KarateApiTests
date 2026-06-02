Feature: Automatizacion de pruebas de API REST con Karate

  Background:
    * url baseUrl
    * headers headers
    * def postData = { title: 'Karate API Test', body: 'Automatización API con Karate', userId: 1 }


  Scenario: CRUD API

    # POST: Crear un post
    Given path 'posts'
    And request postData
    When method POST
    Then status 201

    And match response contains { id: '#number', title: 'Karate API Test' }

    * def createdId = response.id
    * print 'ID generado:', createdId

  # GET: obtener lista de post
    Given path 'posts'
    When method GET
    Then status 200

    And match response[0] contains { id: '#number', title: '#string' }
    And match response[0].userId == 1

  # PATCH: Actualizar post
    * def patchData = { title: 'Actualizacion titulo' }

    Given path 'posts', createdId
    And request patchData
    When method PATCH
    Then status 200

    And match response.title == 'Actualizacion titulo'

  # DELETE: Elimininas post creado
    Given path 'posts', createdId
    When method DELETE
    Then status 200
Feature: Pruebas automatizadas de API REST con Karate

  Background:
    * url baseUrl
    * def postData = { title: 'Karate Test', body: 'Automatización API', userId: 1 }


  # GET
  Scenario: Obtener lista de posts (GET)
    Given path 'posts'
    When method GET
    Then status 200

    # Validación estructura
    And match response[0] contains { id: '#number', title: '#string' }

    # Validación de datos específicos
    And match response[0].userId == 1


  # POST
  Scenario: Crear un nuevo post (POST)
    Given path 'posts'
    And request postData
    When method POST
    Then status 201

    # Validar estructura
    And match response contains { id: '#number', title: 'Karate Test' }

    # Guardar ID dinámico
    * def createdId = response.id
    * print 'ID generado:', createdId


  # PUT (Actualización completa)
  Scenario: Actualizar un post (PUT)
    * def updateData = { id: 1, title: 'Updated Title', body: 'Updated Body', userId: 1 }

    Given path 'posts', 1
    And request updateData
    When method PUT
    Then status 200

    # Validación de datos
    And match response.title == 'Updated Title'
    And match response.body == 'Updated Body'

  # PATCH (Actualización parcial)
  Scenario: Actualizar parcialmente un post (PATCH)
    * def patchData = { title: 'Patched Title' }

    Given path 'posts', 1
    And request patchData
    When method PATCH
    Then status 200

    And match response.title == 'Patched Title'


  # DELETE
  Scenario: Eliminar un post (DELETE)
    Given path 'posts', 1
    When method DELETE
    Then status 200
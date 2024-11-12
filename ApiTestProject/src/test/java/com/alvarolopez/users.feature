Feature: API tests for GoRest

Background:
  * url 'https://gorest.co.in/public/v2'
  * def authHeader = { Authorization: 'Bearer 700d0c7a86eb84028bf5cd204b11587f812f9d7cd880dc4edbdbd1d407ae9954' }
  * def userId = null
  * header Accept = 'application/json'
  * header Content-Type = 'application/json'

Scenario: List users
  Given path '/users'
  And headers authHeader
  When method GET
  Then status 200
  And match response != null

Scenario: Create user
  Given path '/users'
  And headers authHeader
  And request { "name": "Alvaro Lopez", "gender": "male", "email": "alvaro.lopez20@15ce.com", "status": "active" }
  When method POST
  Then status 201
  * def userId = response.id
  And karate.set('userId', response.id)  
  And match response.name == 'Alvaro Lopez'


Scenario: Update user
  Given path '/users', userId
  And headers authHeader
  And request { "name": "Mauricio Flores", "email": "mauricio.flores@15ce.com", "status": "active" }
  When method PUT
  Then status 200
  And match response.name == 'Mauricio Flores'

Scenario: Delete user
  Given path '/users', userId
  And headers authHeader
  When method DELETE
  Then status 204
@ignore
Feature:Booking-CreateToken

  Background: consume service
    * url apiUrl

  @CreateToken
  #Creates a new auth token to use for access to the PUT and DELETE /booking
  Scenario: Auth - CreateToken
    * def credentials = read('classpath:resources/credentials.json')
    Given path 'auth'
    Given header Accept = 'application/json'
    And request
      """
      {
                    username: '#(credentials.Credentials.username)',
                    password: '#(credentials.Credentials.password)'
      }
      """
    When method POST
    Then status 200
    * def Token = response.token

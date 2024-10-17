Feature:Booking-CreateBooking

  Background: consume service
    * url apiUrl
    * def authToken = call read('classpath:booker/post/createToken.feature@CreateToken')

  @Create
  #Creates a new booking in the API
  Scenario: Booking - CreateBooking

    Given path 'booking'
    Given header Accept = 'application/json'
    And request read ('classpath:booker/post/createBody.json')
    When method POST
    Then status 200
    And assert responseTime < 4000
    And def id = response.bookingid
    And print id
    * def createResponse = response
    And match response.bookingid == "#present", "#number", "#notnull"
    And match response.[*].firstname == "#present", "#string", "#notnull"
    And match response.[*].lastname == "#present", "#string", "#notnull"
    And print 'createResponse: ', response

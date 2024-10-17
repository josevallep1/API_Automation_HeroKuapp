Feature:Booking-UpdateBooking

  Background: consume service
    * url apiUrl
    * def authToken = call read('classpath:booker/post/createToken.feature@CreateToken')
    * def create = call read('classpath:booker/post/createBooking.feature@Create')

  Scenario: Booking - UpdateBooking

    Given path 'booking/'
    And path create.id
    * header Accept = 'application/json'
    * header Cookie = 'token=' + authToken.Token
    And request read ('classpath:booker/put/updateBody.json')
    When method PUT
    Then status 200
    And match response == read('classpath:booker/post/expectedValuesAfterUpdate.json')
    And assert responseTime < 4000
    * def UpdateResponse = response
    And match response.[*].firstname == "#present", "#string", "#notnull"
    And match response.[*].lastname == "#present", "#string", "#notnull"
    And match response.[*].totalprice == "#present", "#number", "#notnull"
    And match response.[*].depositpaid == "#present", "#boolean", "#notnull"
    And match response.[*].[*].checkin == "#present", "#date", "#notnull"
    And match response.[*].[*].checkout == "#present", "#date", "#notnull"
    And match response.[*].additionalneeds == "#present", "#string", "#notnull"

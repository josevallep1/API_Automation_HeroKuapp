Feature:Booking-UpdateBooking

  Background: consume service
    * url apiUrl
    * def authToken = call read('classpath:booker/post/createToken.feature@CreateToken')
    * def create = call read('classpath:booker/post/createBooking.feature@Create')

  #Returns the ids of all the bookings that exist within the API. Can take optional query strings to search and return a subset of booking ids.
  Scenario: Booking - UpdateBooking

    Given path 'booking/'
    And path create.id
    * header Accept = 'application/json'
    * header Cookie = 'token=' + authToken.Token
    When method DELETE
    Then status 201
    * def getBooking = call read('classpath:booker/get/getBooking.feature@BookingNotFoundById')

Feature:Booking-Get

  Background: consume service
    * url apiUrl

  #Returns the ids of all the bookings that exist within the API.
  #Can take optional query strings to search and return a subset of booking ids.
  Scenario: GetBookingIds
    Given path 'booking'
    When method GET
    Then status 200
    And assert responseTime < 4000
    * def getResponse = response
    And print 'getResponse: ', response

  #Returns a specific booking based upon the booking id provided
  Scenario: GetBookingById
    Given path 'booking/1593'
    When method GET
    Then status 200
    And assert responseTime < 4000
    * def getResponse = response
    And print 'getResponse: ', response

  @BookingNotFoundById
  #Returns 440 for booking not found
  Scenario: GetBookingNotFoundById
    Given path 'booking/'
    And path id
    When method GET
    Then status 404

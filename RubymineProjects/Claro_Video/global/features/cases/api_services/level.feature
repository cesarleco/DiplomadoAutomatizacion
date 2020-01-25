Feature: Validate level services

  @api
  Scenario Outline: Validate response of the service
    Given I execute the service "<service>" in the API's
    When I send the "<request>" to the service in the device "<device>" and the service responds to me
    And I validate response of the service is different to empty
    And I check the response message is "<message>"
    And I check the response code is "<code>"
    Then I check the response contains the item "<item>"

    Examples:
      | service | request         | device  | message               | code | item      |
      | level   | Valid_request   | web     | OK                    | 200  | 43445605  |
      | level   | Invalid_request | android | Internal Server Error | 500  | USR_001   |
      | level   | Invalid_token   | ios     | Internal Server Error | 500  | USR_001   |
      | level   | Valid_request   | windows | OK                    | 200  | 51170178  |
      | level   | Valid_request   | tv      | OK                    | 200  | 462577880 |
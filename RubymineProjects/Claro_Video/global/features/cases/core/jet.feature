Feature: This feature the title of the page and the text of the home will be validated.

  @new0
  Scenario:Try deep to test the full flow
    Given I visit url "https://www.clarovideo.com/mexico/homeuser" and wait for load page
    And I get the page url
    When I validate the page title
    And I will validate the footer elements
    And I validate without coinsiden the url



  @new1
  Scenario: Test deep link to test full flow
    Given An excel with information about new depplinks
    When I get a sheet where exist the information
    And I make the complete flow of new deep links by country for new functionality


  @new2
  Scenario Outline:Login and validate deeplinks
    Given I visit url "https://www.beta.claromusica.com/login/MX" and wait for load page
    When I type the mail with text "<mail>"
    And I type the password with "123456"
    And I click on the option button Inicia sesión
    Given An excel with information about new depplinks México
    When I get a sheet where exist the information
    And I make the complete flow for new deeplinks México
    Examples:
      | mail            |
      #| qa_qa@gmail.com |
      | z_z@gmail.com |


@current
Feature: Get API feature

  Background: init
    * def baseUrl = 'https://gorest.co.in/public/v2/users/'

   # id will change overtime, need to set again
  #
  Scenario: PATH parameter, get user details
    Given url baseUrl
    And path 6814241
    When method GET
    Then status 200
    * print response
    * def name = response.name
    * match name == 'Aadi Mukhopadhyay'


  Scenario: query parameter
    * def queries = {page:1, per_page:5}
    Given url baseUrl
    And params queries
    When method GET
    Then status 200
    And karate.sizeOf(response) == 5


  Scenario: request header
    * def queries = {page:1, per_page:5}
    Given url baseUrl
    And params queries
    And header Content-Type = 'application/json'
    When method GET
    Then status 200
    And karate.sizeOf(response) == 5

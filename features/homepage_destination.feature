
Feature: Add Destination
  Scenario: A user adds a destination on the homepage
    Given that I'm signed in
    And I'm on the homepage
    When I enter a destination
    Then it appears on the page

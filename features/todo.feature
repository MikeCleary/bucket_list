@wip @javascript
Feature: Add Todo
  Scenario: A user adds a todo on the homepage
    Given that I'm signed in
    And I'm on the homepage
    When I enter a destination
    And I enter a todo
    Then the todo appears on the destination
@api
Feature: <title of what feature does>
  In order to <achieve business objective>
  As a <role>
  I need to be able to <execute function or use feature>

  Scenario: Ensure <role> has access to use feature
    Given I am logged in as a user with the "<role>" role
    When I go to "<primary feature access URL>"
    Then I should see the text "<page title>"

  Scenario: Ensure feature fundamental components are available
    Given I am logged in as a user with the "<role>" role
    When I go to "<primary feature access URL>"
    Then I should see "<fundamental component>"
    And I should see "<another fundamental component>"
    And I should see "<another fundamental component>"
    And I should see "<another fundamental component>"

  Scenario: Ensure feature fundamental components work
    Given I am logged in as a user with the "<role>" role
    When I go to "<primary feature access URL>"
    And I interact/input with "<fundamental component>"
    And I interact/input with "<another fundamental component>"
    And trigger execution of "<fundamental function>"
    Then I should see "<outcome>"
    And I should see "<outcome>"

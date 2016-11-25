@api
@role-site-editor
Feature: Create News Articles
  In order to publish news to the site
  As a Site Editor
  I need to be able to create new News Articles

  Scenario: Ensure Site Editor has access to create News Articles
    Given I am logged in as a user with the "Site Editor" role
    When I go to "/node/add/article"
    Then I should see the text "New Article"

  Scenario: Verify News Article Fields
    Given I am logged in as a user with the "Site Editor" role
    When I go to "/node/add/article"
    Then I should see the "Title" field
    And I should see the "Body" field
    And I should see the "Hero Image" field
    And I should see the "Category" field
    And I should see the "Submit" button

  Scenario: Create a News Article
    Given I am logged in as a user with the "Site Editor" role
    When I go to "/node/add/article"
    And I set the "Title" field with "Lama defies all odds and completes marathon"
    And I set the "Body" field with "Karl the Lama ran a marathon today in record time."
    And I set the "Category" field to "Sport"
    And click "Submit"
    Then I should see text "Lama defies all odds and completes marathon"
    And I should see "Article created."

  Scenario: Verify Category Field is Mandatory on News Article
    Given I am logged in as a user with the "Site Editor" role
    When I go to "/node/add/article"
    And I set the "Title" field with "Lama defies all odds and completes marathon"
    And I set the "Body" field with "Karl the Lama ran a marathon today in record time."
    And click "Submit"
    Then I should see text "Category is a required field"

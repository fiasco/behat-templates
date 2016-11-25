@api
@role-site-editor
Feature: View News Article as Anonymous User
  In order to view news on the site
  As a Anonymous user
  I need to be able to access News Articles

  Scenario: Ensure Anonymous User can view new News Articles on the Front Page
    Given there is a News Article called "Marathon Lama Suffers From Short Breath"
    When I go to the frontpage
    Then I should see the article "Marathon Lama Suffers From Short Breath"

  Scenario: Ensure Anonymous User can view new News Articles
    Given there is a News Article called "Marathon Lama Suffers From Short Breath"
    When I go to the frontpage
    And I click on ""Marathon Lama Suffers From Short Breath"
    Then I should see the article "Marathon Lama Suffers From Short Breath"

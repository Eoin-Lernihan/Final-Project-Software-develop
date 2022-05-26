Feature: User can add a Game Review

Scenario: Add a Game Review - Save
    Given I am on the home page 
    When I follow "New Game review"
    And I am on the new page
    And I fill in "Name" with "name"
    And I fill in "Description" with "description"
    And I fill in "Developer" with "developer"
    And I fill in "Review" with "thisis a review"
    And I select "Action" from "Genre" 
    And I select "1" from "Stars" 
    And I press "Save Changes"
    Then I am on the home page


Scenario: Add a Game Review - Cancel
    Given I am on the home page 
    When I follow "New Game review"
    And I am on the new page
    And I fill in "Name" with "name"
    And I fill in "Description" with "description"
    And I fill in "Developer" with "developer"
    And I fill in "Review" with "thisis a review"
    And I select "Action" from "Genre" 
    And I select "1" from "Stars" 
    And I follow "Cancel"
    Then I am on the home page

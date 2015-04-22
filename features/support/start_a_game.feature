Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    And I should see "What's your name?"
    And I should be able to enter my name
    Then I should see the grid

  Scenario: No Name
    Given I am on the "Name" page
    When I don't enter my name
    Then I see "Please enter your name"

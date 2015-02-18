Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    And I should be able to enter my name


Feature: Not adding a name
  In order to play battleships
  As the player one
  I want to add my name

  Scenario: No Name
    Given I am on the "New Game" page
    When I enter my name
    Then
Feature: Manage Movies
  In order to see all movies
  As a normal user
  I want to get a list of the movies

  Scenario: Movies List
    Given I have movies titled "Interestelar","Gravidade"
    When I go to the list of movies
    Then I should see "Interestelar","Gravidade" movies

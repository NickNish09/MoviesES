@movies
Feature: Manage Movies
  In order to see all movies
  As a normal user
  I want to get a list of the movies

  Scenario: Movies List
    Given I have movies titled "Interestelar","Gravidade"
    When I go to the list of movies
    Then I should see "Interestelar","Gravidade" movies

  Scenario: Seeing specific movie
    Given I have a movie titled "Interestelar"
    When I go to the list of movies
    And Clico no link "Interestelar"
    Then I should see the title and description of Interestelar

  Scenario: Creating a movie
    Given I am in the home page
    When I click on link "New Movie"
    And Put the title "Interestelar", description "It's all relative" and rating 5
    And click on "Enviar"
    Then I should see a message saying "Movie was successfully created!"
    And current path should be the path to the movies list with the new movie "Interestelar" added

  Scenario: Editing a movie
    Given I have a movie titled "Interestelar", with description "Description" and rating 4
    When I go to the list of movies
    And click the link "Edit Movie"
    And I put the title "Edited Interestelar", description "Edited Description" and rating 5
    And click on "Enviar"
    Then I should see a message saying "Movie was successfully updated."
    And current path should be the path to the movies list with the movie edited
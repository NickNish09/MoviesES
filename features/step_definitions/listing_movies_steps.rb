#Scenario 1

Given(/^I have movies titled "([^"]*)","([^"]*)"$/) do |movie1, movie2|
  @movie1 = Movie.create(title: movie1)
  @movie2 = Movie.create(title: movie2)
end

When(/^I go to the list of movies$/) do
  visit "/"
end

Then(/^I should see "([^"]*)","([^"]*)" movies$/) do |title1, title2|
  @movie1 = Movie.find_by_title(title1)
  @movie2 = Movie.find_by_title(title2)
  expect(page).to have_content(@movie1.title)
  expect(page).to have_content(@movie2.title)
end

# Scenario 2

Given(/^I have a movie titled "([^"]*)"$/) do |movie|
  @movie = Movie.create(title: movie, description: "O filme mais massa da história")
end

When(/^Clico no link "([^"]*)"$/) do |link|

  visit "/"
  click_link @movie.title
end

Then(/^I should see the title and description of Interestelar$/) do
  expect(page).to have_content(@movie.title)
  expect(page).to have_content(@movie.description)
end

#Scenario 3

Given(/^I am in the home page$/) do
  visit "/"
end

When(/^I click on link "([^"]*)"$/) do |link|
  click_link link
end

When(/^Put the title "([^"]*)", description "([^"]*)" and rating (\d+)$/) do |title, description, rating|
  fill_in "Title", with: title
  fill_in "Description", with: description
  fill_in "Rating", with: rating
end

When(/^click on "([^"]*)"$/) do |button|
  click_button button
end

Then(/^I should see a message saying "([^"]*)"$/) do |message|
  expect(page).to have_content message
end

Then(/^current path should be the path to the movies list with the new movie "([^"]*)" added$/) do |movie|
  expect(page.current_path).to eq(movies_path)
  expect(page).to have_content movie
end

#Scenario 4

Given(/^I have a movie titled "([^"]*)", with description "([^"]*)" and rating (\d+)$/) do |title, description, rating|
  visit "/"
  @movie = Movie.create(title: title, description: description, rating: rating)
end

When(/^click the link "([^"]*)"$/) do |edit|
  click_link edit
end

When(/^I put the title "([^"]*)", description "([^"]*)" and rating (\d+)$/) do |title, description, rating|
  fill_in "Title",with: title
  fill_in "Description",with: description
  fill_in "Rating",with: rating
end

Then(/^current path should be the path to the movies list with the movie edited$/) do
  expect(page.current_path).to eq("/movies/#{@movie.id}")
  @movie = Movie.find(@movie.id)
  expect(page).to have_content @movie.title
  expect(page).to have_content @movie.description
  expect(page).to have_content @movie.rating
end

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

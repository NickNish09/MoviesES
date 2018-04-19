# This is the steps file referred to adicionar_filme feature
# Place your code relative to that feature here

Dado(/^que eu esteja na pagina filmes tenha preencha o formulario com "([^"]*)" e "([^"]*)"$/) do |arg1, arg2|
  visit(movies_path)
  click_link("New Movie")
  fill_in "movie_title",with: arg1
  fill_in "movie_description",with: arg2
end

Quando(/^quando eu clicar em "([^"]*)"$/) do |arg1|
  click_button(arg1)
end

Entao(/^devo ver o novo filme criado$/) do
  expect(page).to have_content Movie.last.title
  expect(page).to have_content Movie.last.description
end


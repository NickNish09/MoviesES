Dado(/^que eu esteja na página de categorias$/) do
  visit categories_path #index de categorias
end

Quando(/^eu clicar no link "([^"]*)"$/) do |arg1|
  click_link arg1
end

Quando(/^preencher o formulário com os seguintes atributos:$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.rows_hash.each do |field,value|
    fill_in field,with: value
  end
end

Quando(/^clicar no botão "([^"]*)"$/) do |arg1|
  click_button arg1
end

Entao(/^eu devo ver uma mensagem avisando "([^"]*)"$/) do |arg1|
  expect(page).to have_content arg1
end

Entao(/^A lista de categorias com a a nova categoria "([^"]*)" criada$/) do |arg1|
  expect(page).to have_content arg1
end

#Cenário 2

Dado(/^Tenha categorias nomeadas como "([^"]*)" e "([^"]*)"$/) do |arg1, arg2|
  @category = Category.create(name: arg1, description: "Massa")
  @category2 = Category.create(name: arg2, description: "Massa")
  visit categories_path
end

Entao(/^Eu devo ver os nomes "([^"]*)" e "([^"]*)"$/) do |arg1, arg2|
  expect(page).to have_content arg1
  expect(page).to have_content arg2
end

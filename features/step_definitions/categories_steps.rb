Dado(/^que eu esteja na página de categorias$/) do
  visit categories_path
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

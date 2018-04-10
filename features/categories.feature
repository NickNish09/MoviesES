# language: pt
# encoding: utf-8
@categories
Funcionalidade: Criar categorias para filmes

  Cenário: Criar nova categoria
    Dado que eu esteja na página de categorias
    Quando eu clicar no link "Criar nova Categoria"
    E preencher o formulário com os seguintes atributos:
    |category_name       |Drama              |
    |category_description|Aclamado pelo Oscar|
    E clicar no botão "Create Category"
    Entao eu devo ver uma mensagem avisando "Nova Categoria Cadastrada"
    E A lista de categorias com a a nova categoria "Drama" criada


  Cenário: Listar todas as categorias
    Dado que eu esteja na página de categorias
    E Tenha categorias nomeadas como "Drama" e "Comédia"
    Entao Eu devo ver os nomes "Drama" e "Comédia"
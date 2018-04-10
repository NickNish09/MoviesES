# language: pt
# encoding: utf-8

Funcionalidade: Criar categorias para filmes

  Cenário: Criar nova categoria
    Dado que eu esteja na página de categorias
    Quando eu clicar no link "Criar nova Categoria"
    E preencher o formulário com os seguintes atributos:
    |name       |Drama              |
    |description|Aclamado pelo Oscar|
    E clicar no botão "Enviar"
    Entao eu devo ver uma mensagem avisando "Nova Categoria Cadastrada"
    E A lista de categorias com a a nova categoria "Drama" criada

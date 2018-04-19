#language: pt
#encoding: utf-8

@adicionar_filme
Funcionalidade: adicionar_filme
  Como [stakeholder]
  Para que eu [funcionalidade]
  Eu quero [finalidade]

  #index
  Delineacao do Cenario: Criar Filme
    Dado que eu esteja na pagina filmes tenha preencha o formulario com <title> e <description>
    Quando quando eu clicar em "Enviar"
    Entao devo ver o novo filme criado

    Exemplos:
    |title|description|
    |"Interestelar"|"Massa"|
    |"Rogue One"|"Não tão massa"|

#language: pt


Feature: Autentificação de login

Eu como cliente da EBAC-Shop , gostaria de concluir meu cadastro
para finalizar minhas compras


Contexto: 
Dado quando eu acessar o portal de login na plataforma EBAC Shop



Cenário: Conclusão de cadastro

When : Preencher os campos de dados pessoais
And : não preencher os campos com asteristico 
Then : meu cadastro é invalidado 



Scenario: Dados invalidos 

When : Eu preencher o campo com email invalido 
Then : dever restrigir o acesso e exibir uma mensagem "email invalido"


Scenario: Acesso negado 

When : Eu tentar me cadastrar faltando campos obrigatórios
Then : Deve negar o cadastro com a mensagem de alerta "todos os campos devem ser preenchidos"


Scenario Outline: Dados invalidos negar acesso

Example:
Quando eu digitar o <email>
e o campo aparecer em vermelho
deve se negar o cadastro e mostra uma "mensagem"

|email                    | mensagem |
|"joseerneto@ebac.com.br" | "bem vindo Jose"
|"ernestojose123@ebac.com"| "bem vindo Ernesto"
|"jose175@inexis.com"     | "email inválido"
|"jose@123.com.br"        | "email inválido"

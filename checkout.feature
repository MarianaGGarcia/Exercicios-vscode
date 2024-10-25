#language: pt


Funcionalidade: Autentificação de login

Eu como cliente da EBAC-Shop , gostaria de concluir meu cadastro
para finalizar minhas compras


Contexto: 
Dado quando eu acessar o portal de login na plataforma EBAC Shop



Cenario: Conclusão de cadastro

Quando : Preencher os campos de dados pessoais
E : não preencher os campos com asteristico 
Então : meu cadastro é invalidado 



Cenario: Dados invalidos 

Quando : Eu preencher o campo com email invalido 
Então : dever restrigir o acesso e exibir uma mensagem "email invalido"


Cenario: Acesso negado 

Quando : Eu tentar me cadastrar faltando campos obrigatórios
Então : Deve negar o cadastro com a mensagem de alerta "todos os campos devem ser preenchidos"

Exemplo:

Esquema do cenário: Dados invalidos negar acesso


Quando eu digitar o <email>
e o campo aparecer em vermelho
deve se negar o cadastro e mostra uma "mensagem"

|email                    | mensagem |
|"joseerneto@ebac.com.br" | "bem vindo Jose"
|"ernestojose123@ebac.com"| "bem vindo Ernesto"
|"jose175@inexis.com"     | "email inválido"
|"jose@123.com.br"        | "email inválido"

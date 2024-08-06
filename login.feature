#language: pt


Feature: Autentificação
Eu como cliente da EBAC-Shop quero fazer login
na plataforma para visualizar meus pedidos 


Contexto: 
Dado que eu acesse o portal EBAC-Shop e fazer o login



Scenario: Autentificação válida
When : Inserir usuario e senha cadastradas na plataforma 
Then : Deve permitir fazer o login e aparecer uma mensagem de boas vindas


Scenario: Autentificação inválida
When : Inserir uma senha diferente da cadastrada
Then : O login não deve ser concluido e uma mensagem de alerta deve aparecer


Scenario Outline: Dados válidos

Exemplo:

Dado que entre com o <usuario> e a <senha> corretos
deve aparecer a "mensagem"

|Usuario        |Senha        | Mensagem |
|JoseErnesto123 |jose@ebac123 | "Bem vindo Jose"
|ErnestoJ456    |ebac456@     | "Bem vindo Ernesto"





#language: pt


Funcionalidade: Autentificação
Eu como cliente da EBAC-Shop quero fazer login
na plataforma para visualizar meus pedidos 


Contexto: 
Dado que eu acesse o portal EBAC-Shop e fazer o login



Cenario: Autentificação válida
Quando : Inserir usuario e senha cadastradas na plataforma 
Entao : Deve permitir fazer o login e aparecer uma mensagem de boas vindas


Cenario: Autentificação inválida
Quando : Inserir uma senha diferente da cadastrada
Entao : O login não deve ser concluido e uma mensagem de alerta deve aparecer

Exemplo:

Esquema do cenário: Dados válidos


Dado que entre com o <usuario> e a <senha> corretos
deve aparecer a "mensagem"

|Usuario        |Senha        | Mensagem |
|JoseErnesto123 |jose@ebac123 | "Bem vindo Jose"
|ErnestoJ456    |ebac456@     | "Bem vindo Ernesto"





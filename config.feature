#language: pt


Feature: Catálago de produtos 
Eu como cliente do EBAC Shop quero configurar o produto
com tamanho , cor e quantidade 
e inserir no carrinho de compras

Scenario: Reconhecer produtos no carrinho
Given : que eu escolha um produto no catálago
When : eu escolher o tamanho , cor e quantidade
Then : as opções passam a ser obrigatórias e o produto vai automaticamente para o carrinho de compras

Scenario: Quantidade limite
Given : que atinja a quantidade de 10 produtos no carrinho de compras
When : eu for adicionar o décimo primeiro produto
Then : deve aparecer uma mensagem "permitido apenas 10 produtos"


Scenario: Comando
Given : Que eu acesse o carrinho de compras
When : e aperte o botão "limpar"
Then : deve limpar todos os produtos e voltar ao estado orginal


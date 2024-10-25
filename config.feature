#language: pt


Funcionalidade: Catálago de produtos 
Eu como cliente do EBAC Shop quero configurar o produto
com tamanho , cor e quantidade 
e inserir no carrinho de compras

Cenario: Reconhecer produtos no carrinho
Dado : que eu escolha um produto no catálago
Quando : eu escolher o tamanho , cor e quantidade
Entao : as opções passam a ser obrigatórias e o produto vai automaticamente para o carrinho de compras

Cenario: Quantidade limite
Dado : que atinja a quantidade de 10 produtos no carrinho de compras
Quando : eu for adicionar o décimo primeiro produto
Entao : deve aparecer uma mensagem "permitido apenas 10 produtos"


Cenario: Comando
Dado : Que eu acesse o carrinho de compras
Quando : e aperte o botão "limpar"
Entao : deve limpar todos os produtos e voltar ao estado orginal


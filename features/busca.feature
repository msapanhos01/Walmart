#language: pt
#utf-8

Funcionalidade: Buscar produto no site
	Eu como usuário
	Quero acessar  o site do walmart
	encontrar produtos que desejam comprar 


	
	Cenário: Realizar busca de produto
	 Dado 	que estou no site do Walmart
	 Quando Procurar pelo termo "tv" na busca
	 Então valido que a busca foi feita
	 Então 	Adicionar ao meu carrinho 
	 E verificar se o produto foi adicionado ao carrinho
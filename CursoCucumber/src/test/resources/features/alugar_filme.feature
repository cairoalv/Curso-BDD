# language: pt
Funcionalidade: Alugar Filme
	Como um usuario
	Eu quero cadastrar algueis de filmes
	Para controlar precos e datas de entregas
	
Cenario: Deve alugar um filme com sucesso
	Dado um filme 
		| estoque |	2			|
		| preco		|	3			|
		|	tipo		|	comum |
	E que o preço do aluguel seja R$ 3
	Quando alugar
	Entao o preço do aluguel sera R$ 3 
	E a data da entrega sera em 1 dia
	E o estoque do filme sera 1 unidade
	
Cenario: Aluguel sem estoque
	Dado um filme com estoque de 0 unidades
	Quando alugar
	Entao nao sera possivel por falta de estoque
	E o estoque do filme sera 0 unidade
	
	Esquema do Cenario: Deve dar condicies conforme tipo de aluguel
		Dado um filme com estoque de 2 unidades
		E que o preço do aluguel seja R$ <preco>
		E que o tipo do aluguel seja <tipo>
		Quando alugar
		Entao o preço do aluguel sera R$ <valor>
		E a data da entrega sera em <qtdDia> dias
		E a pontuacao sera de <pontuacao> pontos
		
	Exemplos: 	
		| preco | tipo 			| valor | qtdDia | pontuacao |
		| 	4 	| estendido | 	8	  | 	 3	 | 		 2 	   |
		| 	4  	| 	comum 	| 	4 	| 	 1	 |		 1		 |
		|  10 	| estendido	| 	20 	| 	 3	 |		 2		 |	
		| 	5  	|  semanal 	| 	15 	| 	 7	 |		 3		 |
	
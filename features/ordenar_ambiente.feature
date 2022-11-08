# language: pt
Funcionalidade: ordenar ambientes
Como usuário
Para eu poder gerenciar diversos contextos de lembretes
Eu quero poder ordenar meu ambientes

  Cenário: ordenar ambientes por nome
   Dado que estou na página dos ambientes
   Quando cadastro o ambiente com "Faculdade" e "Lembretes das provas e trabalhos"
   E cadastro um outro ambiente com "Cozinha" e "Lembretes de data de validade"
   E volto para a tela dos ambientes
   E clico no link "Nome"
   Então devo ver o ambiente "Cozinha" antes do ambiente "Faculdade"
   

  Cenário: ordenar ambientes por data de criação
   Dado que estou na página dos ambientes
   Quando cadastro o ambiente com "Faculdade" e "Lembretes das provas e trabalhos"
   E cadastro um outro ambiente com "Cozinha" e "Lembretes de data de validade"
   E volto para a tela dos ambientes
   E clico no link "Data de Criação"
   Então devo ver o ambiente "Faculdade" antes do ambiente "Cozinha"
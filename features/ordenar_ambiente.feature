# language: pt
Funcionalidade: ordenar ambientes
Como usuário
Para eu poder gerenciar diversos contextos de lembretes
Eu quero poder ordenar meu ambientes

Contexto: 
    Dado Que estou logado como "teste@teste.br" com a senha "123456"
    Dado que já criei um ambiente "Faculdade" com descrição "Lembretes das provas e trabalhos"
    Dado que já criei um ambiente "Cozinha" com descrição "Lembretes de data de validade"

  Cenário: ordenar ambientes por nome
   Quando for na página dos ambientes
   E clicar em "Nome"
   Então devo ver o ambiente "Cozinha" antes do ambiente "Faculdade"
   

  Cenário: ordenar ambientes por data de criação
   Quando for na página dos ambientes
   E clicar em "Nome"
   E clicar "Data de Criação"
   Então devo ver o ambiente "Faculdade" antes do ambiente "Cozinha"
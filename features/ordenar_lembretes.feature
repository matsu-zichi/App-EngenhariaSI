# language: pt
Funcionalidade: ordenar lembretes
Como um usuário
Para que eu possa acompanhar meus lembretes
Eu quero poder vê-los em ordem ascendente pela prioridade ou titulo do lembrete

  Cenário: ordenar lembretes por prioridade mais alta
    Dado que eu estou na página do ambiente "Casa"
    E criei o lembrete "Pagar conta de luz" com descricao "Nao esquecer de pagar o boleto da conta de luz" e prioridade "P1"
    E criei o lembrete "Limpar banheiro" com descricao "Nao esquecer de limpar o banheiro da suite, esta imundo" e prioridade "P3"
    Quando clicar em "Prioridade"
    Então devo ver o lembrete "Pagar conta de luz" antes do lembrete "Limpar banheiro"
   

  Cenário: ordenar lembretes por titulo
    Dado que eu estou na página do ambiente "Casa"
    E criei o lembrete "Pagar conta de luz" com descricao "Nao esquecer de pagar o boleto da conta de luz" e prioridade "P1"
    E criei o lembrete "Limpar banheiro" com descricao "Nao esquecer de limpar o banheiro da suite, esta imundo" e prioridade "P3"
    Quando clicar em "Titulo"
    Então devo ver o lembrete "Limpar banheiro" antes do lembrete "Pagar conta de luz"
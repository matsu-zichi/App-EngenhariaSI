# language: pt
Funcionalidade: listagem de ambiente
Como um usuário
Para eu poder acompanhar os diferentes lembretes que tenho
Eu quero poder ver meus ambientes na página inicial

  Cenário: listagem de lembretes por data de expiração mais cedo
    Dado que eu estou dentro de um ambiente
    Quando eu clicar no botão "filtro"
    Então posso ordenar os lembretes pelo tempo de expiração mais curto

  Cenário: listagem de lembretes por data de expiração mais longa
    Dado que eu estou dentro de um ambiente
    Quando eu clicar no botão "filtro"
    Então posso ordenar os lembretes pelo tempo de expiração mais longa

  Cenário: listagem de lembretes por data de criação mais recente
    Dado que eu estou dentro de um ambiente
    Quando eu clicar no botão "filtro"
    Então posso ordenar os lembretes pela data mais recente de criação

  Cenário: listagem de lembretes por data de criação mais antiga
    Dado que eu estou dentro de um ambiente
    Quando eu clicar no botão "filtro"
    Então posso ordenar os lembretes pela data mais antiga de criação

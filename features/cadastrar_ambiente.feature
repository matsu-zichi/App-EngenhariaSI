# language: pt
Funcionalidade: cadastro de novo ambiente
Como usuário
Para eu poder gerenciar diversos contextos de lembretes
Eu quero poder criar um novo ambiente dedicado

Cenário: cadastro de novo ambiente com sucesso
    Dado que eu estou na página de cadastro de ambiente 
    Quando eu preencho o campo "nome" com "Faculdade"   
    E clico em criar                                    
    Então ele deverá ser salvo no banco de dados        
    E deverei ver o meu novo ambiente  

Cenário: cadastro de novo ambiente com erro - sem nome do ambiente                    
    Dado que eu estou na página de cadastro de ambiente                               
    Quando eu preencho o campo "nome" vazio                                           
    E clico em criar                                                                  
    Então deverei ver a mensagem de erro "É obrigatório informar o nome do ambiente!"
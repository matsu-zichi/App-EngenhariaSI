#language: pt

Funcionalidade: Cadastrar Subitens
Como usuario
Para que eu possa dividir minha tarefa em partes
Eu quero cadastrar subitens ao meu lembrete

Contexto: 
    Dado que loguei como "teste@teste.br" com a senha "123456"
    Dado que criei um ambiente "Teste" com descrição "Um ambiente"
    Dado que criei um lembrete "Lembrar de Teste" com descrição "Teste"

Cenário: Cadastro de Subitem com sucesso
    Quando for na página de cadastro de subitens do lembrete
    E preencho o campo "Titulo" com "Lembrete 1 de x"
    E preencho o campo "Texto" com "Não se esquecer de fazer as tarefas"
    E cliclar em "Save Subitem"
    Entao deveria ver na pagina "Subitem was successfully created."

Cenário: Cadastro de Subitem com erro - Sem titulo
    Quando for na página de cadastro de subitens do lembrete
    E preencho o campo "Titulo" com ""
    E preencho o campo "Texto" com "Texto"
    E clicar em "Save Subitem"
    Então deveria ver na pagina "Titulo can't be blank"

Cenário: Cadastro de Subitem com erro - Sem texto
    Quando for na página de cadastro de subitens do lembrete
    E preencho o campo "Titulo" com "Lembrete 1 de x"
    E preencho o campo "Texto" com ""
    E clicar em "Save Subitem"
    Então deveria ver na pagina "Texto can't be blank"

Cenário: Cadastro de Subitem com erro - Sem titulo e texto
    Quando for na página de cadastro de subitens do lembrete
    E preencho o campo "Titulo" com ""
    E preencho o campo "Texto" com ""
    E clicar em "Save Subitem"
    Então deveria ver na pagina "2 errors prohibited this lembrete from being saved:"

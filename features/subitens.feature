#language: pt

Funcionalidade: Cadastrar Subitens
Como usuario
Para que eu possa dividir minha tarefa em partes
Eu quero cadastrar subitens ao meu lembrete

Cenário: Cadastro de Subitem com sucesso
    Quando for na página de cadastro de subitens do lembrete
    E preencher "Titulo" com "Lembrete 1 de x"
    E preecher "Texto" com "Não se esquecer de fazer as tarefas"
    E cliclar em "Create Subitem"
    Entao deveria ver "Subitem was successfully created."

Cenário: Cadastro de Subitem com erro - Sem titulo
    Quando for na página de cadastro de subitens do lembrete
    E preencher "Titulo" com ""
    E preecher "Texto" com "Texto"
    E clicar em "Create Subitem"
    Então deveria ver "Titulo can't be blank"

Cenário: Cadastro de Subitem com erro - Sem texto
    Quando for na página de cadastro de subitens do lembrete
    E preencher "Titulo" com "Lembrete 1 de x"
    E preecher "Texto" com ""
    E clicar em "Create Subitem"
    Então deveria ver "Texto can't be blank"

Cenário: Cadastro de Subitem com erro - Sem titulo e texto
    Quando for na página de cadastro de subitens do lembrete
    E preencher "Titulo" com ""
    E preecher "Texto" com ""
    E clicar em "Create Subitem"
    Então deveria ver "2 errors prohibited this lembrete from being saved:"

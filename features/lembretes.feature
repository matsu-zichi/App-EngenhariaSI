#language: pt

Funcionalidade: Cadastro de lembretes
Como um usuário, eu quero adicionar um item para que eu possa ser alertado
sobre a data de expiração desse item.

Contexto: 
    Dado Que estou logado como "teste@teste.br" com a senha "123456"
    Dado que já criei um ambiente "Teste" com descrição "Um ambiente"

Cenário:
    Quando for na página de lembretes do ambiente
    E cliclar em "Adicionar lembrete"
    E preencher "Titulo" com "Lembrete"
    E preencher "Texto" com "Não se esquecer de fazer as tarefas"
    E cliclar em "Create Lembrete"
    Entao deveria ver "Lembrete was successfully created."

Cenário:
    Quando for na página de lembretes do ambiente
    E cliclar em "Adicionar lembrete"
    E preencher "Titulo" com "Outro Lembrete"
    E preencher "Texto" com "Não se esquecer"
    E cliclar em "Create Lembrete"
    E clicar em "Deletar lembrete"
    Então deveria ver "Lembrete was successfully destroyed."

Cenário:
    Quando for na página de lembretes do ambiente
    E cliclar em "Adicionar lembrete"
    E preencher "Titulo" com "Lembrete"
    E preencher "Texto" com "Não se esquecer de fazer as tarefas"
    E cliclar em "Create Lembrete"
    E clicar em "Editar lembrete"
    E preencher "Titulo" com "EDITADO"
    E preencher "Texto" com "EDITADO"
    E clicar em "Update Lembrete"
    Então deveria ver "Lembrete was successfully updated."

Cenário:
    Quando for na página de lembretes do ambiente
    E clicar em "Adicionar lembrete"
    E preencher "Titulo" com ""
    E preencher "Texto" com "Texto"
    E clicar em "Create Lembrete"
    Então deveria ver "Titulo can't be blank"

Cenário:
    Quando for na página de lembretes do ambiente
    E clicar em "Adicionar lembrete"
    E preencher "Titulo" com "Titulo"
    E preencher "Texto" com ""
    E clicar em "Create Lembrete"
    Então deveria ver "Texto can't be blank"

Cenário:
    Quando for na página de lembretes do ambiente
    E clicar em "Adicionar lembrete"
    E preencher "Titulo" com ""
    E preencher "Texto" com ""
    E clicar em "Create Lembrete"
    Então deveria ver "2 errors prohibited this lembrete from being saved:"

Cenário:
    Quando for na página de lembretes do ambiente
    E cliclar em "Adicionar lembrete"
    E preencher "Titulo" com "Lembrete Email"
    E preencher "Texto" com "Não se esquecer de fazer as tarefas"
    E preencher email
    E cliclar em "Create Lembrete"
    Entao deveria receber o email de confirmacao

Cenário:
    Quando for na página de lembretes do ambiente
    E cliclar em "Adicionar lembrete"
    E preencher "Titulo" com "Lembrete"
    E preencher "Texto" com "Não se esquecer de fazer as tarefas"
    E cliclar em "Create Lembrete"
    E clicar em "Editar lembrete"
    E preencher "Titulo" com ""
    E preencher "Texto" com ""
    E clicar em "Update Lembrete"
    Então deveria ver "2 errors prohibited this lembrete from being saved:"
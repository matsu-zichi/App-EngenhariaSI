# language: pt
Funcionalidade: editar ambiente
Como usuário
Para eu poder gerenciar diversos contextos de lembretes
Eu quero poder editar um ambiente já existente

Cenário: editar ambiente com sucesso
   Dado Que estou logado como "teste@teste.com" com a senha "123456"
   Dado que eu estou na página de edição do ambiente "Faculdade"
   Quando eu preencho o campo "descricao" com "Lembretes da Facul"
   E clico em "Criar"
   Então deverei ver a mensagem "Ambiente atualizado com sucesso."
   E deverei ver o meu ambiente a informacao "Lembretes da Facul" na tela

Cenário: editar ambiente com erro - sem nome do ambiente
   Dado Que estou logado como "teste@teste.com" com a senha "123456"
   Dado que eu estou na página de edição do ambiente "Faculdade"
   Quando eu preencho o campo "nome" com vazio
   E clico em "Criar"
   Então deverei ver a mensagem de erro "É obrigatório informar o nome do ambiente!"
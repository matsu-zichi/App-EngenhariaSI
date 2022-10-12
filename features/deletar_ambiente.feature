# language: pt
Funcionalidade: deletar ambiente
Como usuário
Para eu poder gerenciar diversos contextos de lembretes
Eu quero poder deletar um ambiente já existente

  Cenário: confirmar exclusão de ambiente
    Dado que eu estou na página de edição do ambiente
    Quando eu clico em "deletar"
    E ao clicar no botão "sim"
    Então ele deverá excluir o ambiente do banco de dados
    E voltar para a tela inicial

  Cenário: parar a exclusão de ambiente
    Dado que eu estou na página de edição do ambiente
    Quando eu clico em "deletar"
    E ao clicar no botão "não"
    Então ele deverá voltar para a tela de edição do ambiente

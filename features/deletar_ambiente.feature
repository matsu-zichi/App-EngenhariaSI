# language: pt
Funcionalidade: deletar ambiente
Como usuário
Para eu poder gerenciar diversos contextos de lembretes
Eu quero poder deletar um ambiente já existente
  Cenário: confirmar exclusão de ambiente "Faculdade"
    Dado que eu estou na página de visualização do ambiente "Faculdade"
    Quando eu clico no botao Deletar
    Então deverei ver a mensagem "Ambiente deletado com sucesso."

  Cenário: não clicar na exclusão de ambiente "Faculdade"
    Dado que eu estou na página de visualização do ambiente "Faculdade"
    Quando eu clicar em Voltar para Ambientes
    Então ele deverá voltar para a tela que mostra todos os ambientes
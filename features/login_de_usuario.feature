#language: pt

Funcionalidade: Tela de login
Como um usuário
Para acessar meus dados e lebretes
Quero fazer login e que minha privacidade seja protegida

Cenário: Login de usuário válido
    Dado um usuário válido
    Quando eu for na página de login
    E preecher os campos:
        |Email|teste@teste.br|
        |Password|123456|
    E clicar "Log in"
    Então Deveria ver a página inicial da área logada

Cenário: Senha incorreta
    Dado um usuário válido
    Quando for na página de login
    E preecher os campos de forma incorreta:
        |Email|teste@teste.br|
        |Password|123457|
    E clicar em "Log in"
    Então Deve receber um aviso de credenciais incorretas
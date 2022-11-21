Quando('cadastro o ambiente com {string} e {string}') do |string, string2|
   visit "/ambientes/new"
   @ambiente = Ambiente.create(
      :nome => string,
      :descricao => string2
   )
end

Quando('cadastro um outro ambiente com {string} e {string}') do |string, string2|
   visit "/ambientes/new"
   @ambiente = Ambiente.create(
      :nome => string,
      :descricao => string2
   )
end

Quando('for na página dos ambientes') do
   visit '/'
   fill_in "Email",	with: "usuario@teste.br"
   fill_in "Password",	with: "123456"
   click_on 'Log in'  
   click_on 'Ambientes'
end

Então('devo ver o ambiente {string} antes do ambiente {string}') do |string, string2|
   regex = /#{string}.*#{string2}/m
   expect(page.body).to match(regex)
end
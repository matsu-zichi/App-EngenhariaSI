Dado('que estou na página dos ambientes') do
  visit "ambientes"
end

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

Quando('volto para a tela dos ambientes') do
  visit "/ambientes"
end

Quando('clico no link {string}') do |string|
   visit ambientes_path
   click_on string
end

Então('devo ver o ambiente {string} antes do ambiente {string}') do |string, string2|
   regex = /#{string}.*#{string2}/m
   expect(page.body).to match(regex)
   # pending
end
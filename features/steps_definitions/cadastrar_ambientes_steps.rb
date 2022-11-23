Dado('que eu estou na página de cadastro de ambiente') do
  visit "/ambientes/new"
end

Quando('eu preencho o campo {string} com {string}') do |string, string2|
  fill_in(string, with: string2) 
end

Quando('clico em criar') do
  click_on 'Criar'
end

Então('ele deverá ser salvo no banco de dados') do
  ambiente = Ambiente.order("id").last
  expect(ambiente.nome).to eq('Faculdade')
end

Então('deverei ver o meu novo ambiente') do
  expect(page).to have_content('Faculdade')
end

Quando('eu preencho o campo {string} vazio') do |string|
  fill_in(string, with: "")
end

Então('deverei ver a mensagem de erro {string}') do |string|
  expect(page).to have_content(string)
end
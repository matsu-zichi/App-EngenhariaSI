Dado('que eu estou na página de visualização do ambiente {string}') do |string|
   @ambiente = Ambiente.create(
      :nome => string,
      :descricao => "Lembretes da facul"
   )
   visit "/ambientes/#{@ambiente.id}"
end

Quando('eu clico no botao Deletar') do
  click_on "Deletar"
end

Então('deverei ver a mensagem {string}') do |string|
  expect(page).to have_content(string)
end

Quando('eu clicar em Voltar para Ambientes') do
  click_on "Voltar para Ambientes"
end

Então('ele deverá voltar para a tela que mostra todos os ambientes') do
  expect(page).to have_content('Ambientes')
end
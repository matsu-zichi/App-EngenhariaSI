Dado('que eu estou na página de visualização do ambiente {string}') do |string|
  @user = FactoryBot.create(:user, email: "teste@teste.com.br", password: "123456", password_confirmation: "123456")
  @user.skip_confirmation!
  @user.save!
  @ambiente = FactoryBot.create(:ambiente, nome: string, descricao: "", user: @user)
  visit "/"
  fill_in "Email", :with => "teste@teste.com.br"
  fill_in "Password", :with => "123456"
  click_on "Log in"
  click_on "Ambientes"
  click_on "Edit Ambiente"
  click_on "Ver detalhes desse ambiente"
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
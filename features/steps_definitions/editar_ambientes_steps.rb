Dado('que eu estou na página de edição do ambiente {string}') do |string|
  @ambiente = FactoryBot.create(:ambiente, nome: "Faculdade", descricao: "Lembretes da facul", user: @user)
  visit "/"
  fill_in "Email", :with => "teste@teste.com"
  fill_in "Password", :with => "123456"
  click_on "Log in"
  click_on "Ambientes"
  click_on "Edit Ambiente"
end

Quando('clico em {string}') do |string|
  click_on string
end

Então('deverei ver o meu ambiente a informacao {string} na tela') do |string|
   expect(page).to have_content(string)
end

Quando('eu preencho o campo {string} com vazio') do |string|
  fill_in(string, with: "")
end
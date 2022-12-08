Dado('que eu estou na página do ambiente {string}') do |string|
   @user = FactoryBot.create(:user, email: "teste@teste.com.br", password: "123456", password_confirmation: "123456")
   @user.skip_confirmation!
   @user.save!
   @ambiente = FactoryBot.create(:ambiente, nome: string, descricao: "", user: @user)
   visit "/"
   fill_in "Email", :with => "teste@teste.com.br"
   fill_in "Password", :with => "123456"
   click_on "Log in"
   click_on "Ambientes"
   click_on "Mostrar lembretes"
end

Dado('criei o lembrete {string} com descricao {string} e prioridade {string}') do |string, string2, string3|
  @lembrete = FactoryBot.create(:lembrete, :titulo => string, :texto => string2, :prioridade => string3, ambiente: @ambiente)
end

Então('devo ver o lembrete {string} antes do lembrete {string}') do |string, string2|
   regex = /#{string}.*#{string2}/m
   expect(page.body).to match(regex)
end
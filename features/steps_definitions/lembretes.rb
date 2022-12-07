Dado('Que estou logado como {string} com a senha {string}') do |string, string2|
    @user = FactoryBot.create(:user, email: string, password: string2, password_confirmation: string2)
    # @user = User.create!({
    #     :email => string,
    #     :password => string2,
    #     :password_confirmation => string2
    # })
    @user.skip_confirmation!
    @user.save!
    visit '/'
    fill_in "Email",	with: string
    fill_in "Password",	with: string2  
end

Dado('que já criei um ambiente {string} com descrição {string}') do |string, string2|
    @ambiente = Ambiente.create!({
        :nome => string,
        :descricao => string2,
        :user_id => @user.id
    })
    @ambiente.save!
end

Quando('for na página de lembretes do ambiente') do
    visit '/'
    fill_in "Email",	with: "teste@teste.br"
    fill_in "Password",	with: "123456"
    click_on 'Log in'  
    click_on 'Ambientes'
    click_on 'Mostrar lembretes'
end

Quando('preencher {string} com {string}') do |string, string2|
    fill_in string,	with: string2 
end

Entao('deveria ver {string}') do |string|
    expect(page).to have_content(string) 
end

Entao('um email deveria ser enviado ao criar o lembrete') do 
    expect { click_on 'Criar' }.to change { ActionMailer::Base.deliveries.count }.by(2)
end
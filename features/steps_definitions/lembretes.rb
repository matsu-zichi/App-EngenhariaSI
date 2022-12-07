require 'mailslurp_client'
# configure the mailslurp client with an API Key
MailSlurpClient.configure do |config|
    api_key = "f2cbcf9bbe3ab102cf7ed67e4bcf6a157fc3d84d7ecb95ca1f64e3d791360140"
    if api_key == "" or api_key == nil then
      raise "No API_KEY environment variable set for MailSlurp API KEY"
    end
    config.api_key['x-api-key'] = api_key
  end
# have a nil inbox ready for later
inbox = nil

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
    click_on 'Show Ambiente'
    click_on 'Mostrar lembretes'
end

Quando('preencher {string} com {string}') do |string, string2|
    fill_in string,	with: string2 
end

Quando('preencher email') do 
    inbox_controller = MailSlurpClient::InboxControllerApi.new
    inbox = inbox_controller.create_inbox

    fill_in("Email", with: inbox.email_address)
end

Entao('deveria ver {string}') do |string|
    expect(page).to have_content(string) 
end

Entao('deveria receber o email de confirmacao') do 

    # wait for first unread email to arrive in user's inbox
    wait_controller = MailSlurpClient::WaitForControllerApi.new
    email = wait_controller.wait_for_latest_email({ inbox_id: inbox.id, unread_only: true, timeout: 30_000 })

    # assert the email is a confirmation 
    expect(email.subject).to include("Novo lembrete cadastrado")

    expect(email.body).to have_content("Informamos que o lembrete: 'Lembrete Email' foi cadastrado com sucesso") 

end
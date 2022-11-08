Dado('Que estou logado como {string} com a senha {string}') do |string, string2|
    @user = User.first_or_create!({
        :email => string,
        :password => string2,
        :password_confirmation => string2
    })
    @user.skip_confirmation!
    @user.save!
end

Dado('que já criei um ambiente {string} com descrição {string}') do |string, string2|
    @ambiente = Ambiente.first_or_create!({
        :nome => string,
        :descricao => string2
    })
    @ambiente.save!
end

Quando('for na página de lembretes do ambiente') do
    # visit ambientes_path
    visit "/ambientes/#{@ambiente.id}"
    click_on "Mostrar lembretes"
end

Quando('cliclar em {string}') do |string|
    click_on string
end

Quando('preencher {string} com {string}') do |string, string2|
     fill_in(string, with: string2)
end

Quando('preecher {string} com {string}') do |string, string2|
    fill_in(string, with: string2)
end

Entao('deveria ver {string}') do |string|
    expect(page).to have_content(string) 
end  
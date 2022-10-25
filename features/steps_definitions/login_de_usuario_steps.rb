Dado('um usuário válido') do
    @user = User.create!({
        :email => "teste@teste.br",
        :password => "123456",
        :password_confirmation => "123456"
    })
    @user.skip_confirmation!
    @user.save!
end

Quando('eu for na página de login') do
    visit new_user_session_path
end

Quando('preecher os campos:') do |table|
    atributos = table.rows_hash
    fill_in('Email', with: atributos['Email'])
    fill_in('Password', with: atributos['Password'])
end

Quando('clicar {string}') do |string|
    click_on string
end

Então('Deveria ver a página inicial da área logada') do
    expect(page).to have_content('teste@teste.br') 
end

Quando('for na página de login') do
    visit new_user_session_path
end

Quando('preecher os campos de forma incorreta:') do |table|
    atributos = table.rows_hash
    visit new_user_session_path
    fill_in('Email', with: atributos['Email'])
    fill_in('Password', with: atributos['Password'])
end

Quando('clicar em {string}') do |string|
    click_on string
end

Então('Deve receber um aviso de credenciais incorretas') do
    expect(page).to have_content('Invalid')
end
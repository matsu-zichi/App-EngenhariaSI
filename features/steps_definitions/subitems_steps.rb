Dado('que loguei como {string} com a senha {string}') do |string, string2|
  @user = User.first_or_create!({
      :email => string,
      :password => string2,
      :password_confirmation => string2
  })
  @user.skip_confirmation!
  @user.save!
end

Dado('que criei um ambiente {string} com descrição {string}') do |string, string2|
  @ambiente = Ambiente.first_or_create!({
      :nome => string,
      :descricao => string2
  })
  @ambiente.save!
end

Dado('que criei um lembrete {string} com descrição {string}') do |string, string2|
  @lembrete = Lembrete.first_or_create!({
      :titulo => string,
      :texto => string2,
      :ambiente_id => @ambiente.id
  })
  @lembrete.save!
end

Quando('for na página de cadastro de subitens do lembrete') do
    visit "/ambientes/#{@ambiente.id}/lembretes/#{@lembrete.id}/subitems/new"
  end
  
Quando('preencho o campo {string} com {string}') do |string, string2|
  fill_in string, :with => string2 
end

Quando('clicar em Create Subitem') do
  click_on 'Create Subitem'
end

Entao('deveria ver na pagina {string}') do |string|
  expect(page).to have_content(string)
end

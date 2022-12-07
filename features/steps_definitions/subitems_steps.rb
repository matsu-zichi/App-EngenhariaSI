Dado('que criei um lembrete {string} com descrição {string}') do |string, string2|
  @lembrete = Lembrete.first_or_create!({
      :titulo => string,
      :texto => string2,
      :ambiente_id => @ambiente.id
  })
  @lembrete.save!
end

Dado('que criei um subitem {string} com descrição {string}') do |string, string2|
  @subitem = Subitem.first_or_create!({
      :titulo => string,
      :texto => string2,
      :lembrete_id => @lembrete.id
  })
  @subitem.save!
end

Quando('for na página de cadastro de subitens do lembrete') do
  #visit "/user/#{@user.id}/ambientes/#{@ambiente.id}/lembretes/#{@lembrete.id}/subitems/new"
  visit '/'
  fill_in "Email",	with: "teste@teste.br"
  fill_in "Password",	with: "123456"
  click_on 'Log in'  
  click_on 'Ambientes'
  click_on 'Show Ambiente'
  click_on 'Mostrar lembretes'
  click_on 'Mostrar Sub-itens'
  click_on 'Adicionar Sub-itens'
end

Quando('for na página de edicao do subitem') do
  #visit "/user/#{@user.id}/ambientes/#{@user.id}/lembretes/#{@lembrete.id}/subitems/#{@subitem.id}/edit"
  visit "/"
  fill_in "Email",	with: "teste@teste.br"
  fill_in "Password",	with: "123456"
  click_on 'Log in'
  click_on 'Ambientes'
  click_on 'Show Ambiente'
  click_on 'Mostrar lembretes'
  click_on 'Mostrar Sub-itens'
  click_on 'Editar Subitem'
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

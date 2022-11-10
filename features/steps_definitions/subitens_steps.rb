Quando('for na página de cadastro de subitens do lembrete') do
    visit '/subitem/new'
  end
  
Quando('preencher {string} com {string}') do |string, string2|
  fill_in string, :with => string2 
end

Quando('preecher {string} com {string}') do |string, string2|
  fill_in string, :with => string2 
end

Quando('clicar em Create Subitem') do
  click_on 'Create Subitem'
end

Entao('deveria ver {string}') do |string|
  expect(page).to have_content(string)
end

#Então('ele deve ter sido salvo no banco de dados') do
#  subitem = Subitem.order("id").last
#  expect(subitem.titulo).to eq('Lembrete 1 de x')
#  expect(subitem.texto).to eq('Não se esquecer de fazer as tarefas') 
#end
require 'rails_helper'
require 'factory_bot'

RSpec.describe Ambiente do
  it 'invalido sem nome' do
    ambiente = build(:ambiente, :nome => "", :descricao => "Uma descrição qualquer...") # por ter o support/factory_bot não precisa usar a classe Factory, basta usar os métodos (usar a classe causa NameErro)
    expect(ambiente).not_to be_valid
  end
end

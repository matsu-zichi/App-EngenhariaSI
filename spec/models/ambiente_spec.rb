require 'rails_helper'
require 'spec_helper'

RSpec.describe Ambiente, type: :model do
  if 'invalido sem nome' do
    ambiente = Ambiente.new
    ambiente.descricao = "Uma descrição qualquer..."
    expect(ambiente).not_to be_valid
  end
end

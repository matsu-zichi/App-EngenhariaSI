require 'rails_helper'
require 'spec_helper'

RSpec.describe Subitem, type: :model do
  it 'erro sem titulo' do
    subitem = Subitem.new
    subitem.texto = "Nao esquecer"
    expect(subitem).not_to be_valid
  end
  it 'erro sem texto' do
    subitem = Subitem.new
    subitem.titulo = "Lembrete 1 de x"
    expect(subitem).not_to be_valid
  end
end

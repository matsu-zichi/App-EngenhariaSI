require 'rails_helper'

RSpec.describe Lembrete, type: :model do
  it 'possui um titulo e um texto' do
    lembrete = Lembrete.new
    lembrete.titulo = ""
    lembrete.texto = ""
    lembrete.validate
    expect(lembrete.errors[:titulo]).to include("can't be blank")
    expect(lembrete.errors[:texto]).to include("can't be blank")
  end
end

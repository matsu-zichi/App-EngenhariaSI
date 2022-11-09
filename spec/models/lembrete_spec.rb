require 'rails_helper'

RSpec.describe Lembrete, type: :model do
  it 'possui um titulo e uma descricao' do
    lembrete = Lembrete.new
    lembrete.titulo = ""
    lembrete.descricao = ""
    lembrete.validate
    expect(lembrete.errors[:titulo]).to include("can't be blank")
    expect(lembrete.errors[:descricao]).to include("can't be blank")
  end
end

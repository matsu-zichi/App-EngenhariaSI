require 'rails_helper'

RSpec.describe Subitem, type: :model do
  it 'possui um titulo e um texto' do
    subitem = Subitem.new
    subitem.titulo = ""
    subitem.texto = ""
    subitem.validate
    expect(subitem.errors[:titulo]).to include("can't be blank")
    expect(subitem.errors[:texto]).to include("can't be blank")
  end
end
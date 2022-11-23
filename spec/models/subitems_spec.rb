require 'rails_helper'

RSpec.describe Subitemss, type: :model do
  it 'possui um titulo e um texto' do
    subitem = Subitemss.new
    subitem.titulo = ""
    subitem.texto = ""
    subitem.validate
    expect(subitem.errors[:titulo]).to include("can't be blank")
    expect(subitem.errors[:texto]).to include("can't be blank")
  end
end
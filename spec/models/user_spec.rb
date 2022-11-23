require 'rails_helper'

RSpec.describe User, type: :model do
  it 'possui um endereço de email' do     
    user = User.new
    user.email = ''
    user.validate
    expect(user.errors[:email]).to include("can't be blank")
  end
end

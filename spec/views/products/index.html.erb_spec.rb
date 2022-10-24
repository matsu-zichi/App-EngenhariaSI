require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        nome: "Nome"
      ),
      Product.create!(
        nome: "Nome"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Nome".to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "/ambientes", type: :request do

  let(:valid_attributes) {
    {
      nome: "Ambiente",
      descricao: "Um ambiente qualquer"
    }
  }

  describe "GET /index" do
    it "renders a successful response" do
      Ambiente.create! valid_attributes
      get ambientes_url
      expect(response).to be_successful
    end
  end


  describe "GET /new" do
    it "renders a successful response" do
      get new_ambiente_url
      expect(response).to be_successful
    end
  end

end
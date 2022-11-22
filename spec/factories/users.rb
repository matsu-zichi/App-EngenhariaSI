FactoryBot.define do
	factory :user do #ambiente e não ambientes - O nome do arquivo é ambientes.rb, mas a definição é ambiente - causa o erro ArgumentError: Factory not registered
      email {"teste@teste.br"}
      password {"123456"}
      password_confirmation {"123456"}
	end
end
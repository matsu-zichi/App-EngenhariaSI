FactoryBot.define do
	factory :ambiente do #ambiente e não ambientes - O nome do arquivo é ambientes.rb, mas a definição é ambiente - causa o erro ArgumentError: Factory not registered
		nome {"Faculdade"}
		descricao {"Lembretes da facul"}
	end
end
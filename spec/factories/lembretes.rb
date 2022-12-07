FactoryBot.define do
	factory :lembrete do #ambiente e não ambientes - O nome do arquivo é ambientes.rb, mas a definição é ambiente - causa o erro ArgumentError: Factory not registered
		titulo {"Pagar conta de Luz"}
		prioridade {"P1"}
	end
end
require 'rails_helper'
include LembretesHelper

RSpec.describe LembretesHelper, type: :helper do
    it 'countdown para 1h' do
        lembrete = Lembrete.new
        lembrete.titulo = "Consulta medica"
        lembrete.descricao = "Cardiologista"
        lembrete.expire_at = Time.now + 3600

        resp = calcula_countdown(lembrete.expire_at - Time.now)
        expect(resp).to eq("0 dias, 0 horas, 59 minutos e 59 segundos")
    end

    it 'countdown expirado' do
        lembrete = Lembrete.new
        lembrete.titulo = "Consulta medica"
        lembrete.descricao = "Cardiologista"
        lembrete.expire_at = Time.now

        resp = calcula_countdown(lembrete.expire_at - Time.now)
        expect(resp).to eq("Expirado")
    end
end
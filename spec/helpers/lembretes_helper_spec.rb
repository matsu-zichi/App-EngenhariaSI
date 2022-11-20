require 'rails_helper'
include LembretesHelper

RSpec.describe LembretesHelper, type: :helper do
    it 'countdown' do
        lembrete = Lembrete.new
        lembrete.titulo = "Consulta medica"
        lembrete.descricao = "Cardiologista"
        lembrete.expire_at = Time.now + 90061

        resp = calcula_countdown(lembrete.expire_at - Time.now)
        expect(resp).to eq("1 dias, 1 horas, 1 minutos e 0 segundos")
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
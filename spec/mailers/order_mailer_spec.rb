require "rails_helper"

RSpec.describe OrderMailer, type: :mailer do
  it 'lembrete expirado' do
    @user = FactoryBot.create(:user, email: "teste@teste.br", password: "123456", password_confirmation: "123456")
    @user.skip_confirmation!
    @user.save!
    @ambiente = FactoryBot.create(:ambiente, nome: 'Teste', descricao: "", user: @user)
    @ambiente.save!
    @lembrete = Lembrete.first_or_create!({
      :titulo => "Lembrete Email",
      :texto => "teste notificação",
      :ambiente_id => @ambiente.id,
      :expire_at => 1.second.from_now,
      :email => @user.email,
      :prioridade => "P1"
    })
    @lembrete.save!

    expect { 
      OrderMailer.with(lembrete: @lembrete).expired_lembrete.deliver_later(wait_until: @lembrete.expire_at)
    }.to(have_enqueued_job.at(@lembrete.expire_at))

  end

end

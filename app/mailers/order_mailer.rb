class OrderMailer < ApplicationMailer
    def new_order_email
        @lembrete = params[:lembrete]

        mail(to: @lembrete.email, subject: "Novo lembrete cadastrado")
    end
    
    def expired_lembrete
        @lembrete = params[:lembrete]

        mail(to: @lembrete.email, subject: "Lembrete Expirado")
    end
end

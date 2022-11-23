class OrderMailer < ApplicationMailer
    def new_order_email
        @lembrete = params[:lembrete]

        mail(to: @lembrete.email, subject: "Novo lembrete cadastrado")
    end
end

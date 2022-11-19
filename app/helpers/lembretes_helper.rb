module LembretesHelper
    def calcula_countdown(segundos)
        dias = horas = minutos = 0

        if(segundos > 86400)
            dias, segundos = segundos/86400, segundos%86400
        end
        if(segundos > 3600)
            horas, segundos = segundos/3600, segundos%3600
        end
        if(segundos > 60)
            minutos, segundos= segundos/60, segundos%60
        end
        if(segundos <= 0)
            return "Expirado"
        end

        total = "%i dias, %i horas, %i minutos e %i segundos" % [dias, horas, minutos, segundos]
        return total
    end
end

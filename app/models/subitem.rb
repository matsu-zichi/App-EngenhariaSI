class Subitem < ApplicationRecord
    
    validates :titulo, presence: { message: "O campo 'Titulo' é obrigatório!" }
    validates :texto, presence: { message: "O campo 'Texto' é obrigatório!" }
end

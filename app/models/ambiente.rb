class Ambiente < ApplicationRecord
   validates :nome, presence: {message: "É obrigatório informar o nome do ambiente!"}
end

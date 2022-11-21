class Ambiente < ApplicationRecord

   belongs_to :user

   has_many :lembretes, dependent: :destroy

   validates :nome, presence: {message: "É obrigatório informar o nome do ambiente!"}
end

class Lembrete < ApplicationRecord
  
  belongs_to :ambiente

  validates :titulo, presence: true, uniqueness: true
  validates :descricao, presence: true, uniqueness: true
end

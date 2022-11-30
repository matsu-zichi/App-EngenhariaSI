class Lembrete < ApplicationRecord
  
  belongs_to :ambiente
  has_many :subitems, dependent: :destroy

  validates :titulo, presence: true, uniqueness: true
  validates :texto, presence: true, uniqueness: false
end

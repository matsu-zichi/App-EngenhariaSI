class Lembrete < ApplicationRecord
  belongs_to :ambiente

  validates :titulo, presence: true, uniqueness: true
  validates :texto, presence: true, uniqueness: true
end

class Subitem < ApplicationRecord

    belongs_to :lembrete

    validates :titulo, presence: true, uniqueness: true
    validates :texto, presence: true, uniqueness: true
end

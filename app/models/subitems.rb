class Subitems < ApplicationRecord
    
    validates :titulo, presence: true, uniqueness: true
    validates :texto, presence: true, uniqueness: true
end

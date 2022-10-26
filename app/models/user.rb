class User < ApplicationRecord

  has_many :lembretes, dependent: :destroy

  validates :email, presence: {message: "É necessário informar um endereço de email"}

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :omniauthable
  devise :confirmable,
         :database_authenticatable,
         :recoverable,
         :registerable,
         :rememberable,
         :trackable,
         :validatable
end

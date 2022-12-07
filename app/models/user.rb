class User < ApplicationRecord

  has_many :ambientes, dependent: :destroy

  validates :email, presence: {message: "É necessário informar um endereço de email"}

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable,
         :confirmable,
         :recoverable,
         :registerable,
         :rememberable,
         :trackable,
         :validatable
end
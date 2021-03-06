class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :jwt_authenticatable,  jwt_revocation_strategy: JwtDenylist

  validates :mobile_number, presence: true, uniqueness: true
end
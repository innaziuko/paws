class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  # validates :last_name, presence: true
  # validates :first_name, presence: true

  has_many :bookings
  has_many :spaces, dependent: :destroy
end

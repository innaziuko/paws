class Space < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :contact, presence: true
  # validates :description, presence: true, length: { maximum: 500 }
  validates :price, presence: true, numericality: true
end

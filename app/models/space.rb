class Space < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  # has_many :users, through: :bookings

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :contact, presence: true
  validates :description, presence: true
  validates :price, presence: true, numericality: true
end

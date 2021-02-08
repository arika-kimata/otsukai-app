class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  has_many :messages, dependent: :destroy
  has_many :list_rooms
  has_many :lists, through: :list_rooms

  validates :name, presence: true
end
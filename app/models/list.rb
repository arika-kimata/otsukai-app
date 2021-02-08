class List < ApplicationRecord
  has_many :list_rooms
  has_many :rooms, through: :list_rooms
end

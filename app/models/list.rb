class List < ApplicationRecord
  has_many :list_users
  has_many :users, through: :list_users

  validates :name, presence: true
end

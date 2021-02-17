class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :name, presence: true

  has_many :room_users
  has_many :rooms, through: :room_users

  has_many :messages

  has_many :list_users
  has_many :lists, through: :list_users

  has_many :group_users
  has_many :groups, through: :group_users
end

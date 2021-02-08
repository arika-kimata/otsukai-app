class ListRoom < ApplicationRecord
  belongs_to :list
  belongs_to :room
end

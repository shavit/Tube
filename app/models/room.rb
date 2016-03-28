class Room < ApplicationRecord
  has_one :profile
  has_many :viewers
end

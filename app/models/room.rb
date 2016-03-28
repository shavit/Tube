class Room < ApplicationRecord
  belongs_to :profile
  has_many :viewers
end

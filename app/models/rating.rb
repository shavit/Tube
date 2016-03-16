class Rating < ApplicationRecord

  belongs_to :rated, polymorphic: true

  validate :user_has_voted_only_once, on: :create

  # validate that user can votes only once per single object
  def user_has_voted_only_once
    errors.add(:user_id, "Has already voted") if Rating.where(object_name: self.object_name,
      object_id: self.object_id,
      user_id: self.user_id).count > 0
  end
end

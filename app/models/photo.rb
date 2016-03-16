class Photo < ApplicationRecord
  mount_uploader :url, PhotoUploader

  has_many :ratings, as: :rated

  # upvote a photo
  def upvote(user_id)
    rating = Rating.find_or_create_by(object_name: :photo,
    object_id: id,
    user_id: user_id)
    rating.rank = 1

    rating.save
  end

  # downvote a photo
  def downvote(user_id)
    rating = Rating.find_or_create_by(object_name: :photo,
    object_id: id,
    user_id: user_id)
    rating.rank = -1

    rating.save
  end

end

require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "can vote up a photo" do
    photo = photos(:one)
    user_id = 1
    assert photo.upvote(user_id)
    assert photo.downvote(user_id)
  end
end

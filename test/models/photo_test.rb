require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "can vote up a photo" do
    photo = photos(:one)
    user = users(:one)
    
    assert photo.upvote(user.id)
    assert photo.downvote(user.id)
  end
end

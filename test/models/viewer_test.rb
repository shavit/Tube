require 'test_helper'

class ViewerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "viewer belongs to a user and a room" do
    user = users(:one)
    room = rooms(:one)
    viewer = viewers(:one)

    # viewer must have both
    viewer.user_id = user.id
    viewer.room_id = room.id

    assert viewer.save
  end
end

require 'test_helper'

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "room can have a profile" do
    profile = profiles(:one)
    room = rooms(:one)
    room.profile_id = profile.id
    assert room.save
  end
end

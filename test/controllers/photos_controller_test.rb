require 'test_helper'

class PhotosControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "show the upload page" do
    get "/"
    assert true
  end

  test "show photo" do
    photo = photos(:one)
    get "/photos/#{photo.id}.html"
    assert_response 200
  end
end

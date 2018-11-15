require 'test_helper'

class ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get artists_url
    assert_response :success
  end

  test "should get show" do
    get artist_url(3)
    assert_response :success
  end

end

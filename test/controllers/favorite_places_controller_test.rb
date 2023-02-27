require "test_helper"

class FavoritePlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get favorite_places_index_url
    assert_response :success
  end

  test "should get new" do
    get favorite_places_new_url
    assert_response :success
  end

  test "should get create" do
    get favorite_places_create_url
    assert_response :success
  end

  test "should get destroy" do
    get favorite_places_destroy_url
    assert_response :success
  end
end

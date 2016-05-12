require 'test_helper'

class ArtworkImageMapsControllerTest < ActionController::TestCase
  setup do
    @artwork_image_map = artwork_image_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artwork_image_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork_image_map" do
    assert_difference('ArtworkImageMap.count') do
      post :create, artwork_image_map: { artwork: @artwork_image_map.artwork, image_id: @artwork_image_map.image_id }
    end

    assert_redirected_to artwork_image_map_path(assigns(:artwork_image_map))
  end

  test "should show artwork_image_map" do
    get :show, id: @artwork_image_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork_image_map
    assert_response :success
  end

  test "should update artwork_image_map" do
    patch :update, id: @artwork_image_map, artwork_image_map: { artwork: @artwork_image_map.artwork, image_id: @artwork_image_map.image_id }
    assert_redirected_to artwork_image_map_path(assigns(:artwork_image_map))
  end

  test "should destroy artwork_image_map" do
    assert_difference('ArtworkImageMap.count', -1) do
      delete :destroy, id: @artwork_image_map
    end

    assert_redirected_to artwork_image_maps_path
  end
end

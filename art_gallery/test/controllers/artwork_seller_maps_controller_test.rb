require 'test_helper'

class ArtworkSellerMapsControllerTest < ActionController::TestCase
  setup do
    @artwork_seller_map = artwork_seller_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artwork_seller_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork_seller_map" do
    assert_difference('ArtworkSellerMap.count') do
      post :create, artwork_seller_map: { artwork: @artwork_seller_map.artwork, seller_id: @artwork_seller_map.seller_id }
    end

    assert_redirected_to artwork_seller_map_path(assigns(:artwork_seller_map))
  end

  test "should show artwork_seller_map" do
    get :show, id: @artwork_seller_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork_seller_map
    assert_response :success
  end

  test "should update artwork_seller_map" do
    patch :update, id: @artwork_seller_map, artwork_seller_map: { artwork: @artwork_seller_map.artwork, seller_id: @artwork_seller_map.seller_id }
    assert_redirected_to artwork_seller_map_path(assigns(:artwork_seller_map))
  end

  test "should destroy artwork_seller_map" do
    assert_difference('ArtworkSellerMap.count', -1) do
      delete :destroy, id: @artwork_seller_map
    end

    assert_redirected_to artwork_seller_maps_path
  end
end

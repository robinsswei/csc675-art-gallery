require 'test_helper'

class ArtworkArtistMapsControllerTest < ActionController::TestCase
  setup do
    @artwork_artist_map = artwork_artist_maps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artwork_artist_maps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork_artist_map" do
    assert_difference('ArtworkArtistMap.count') do
      post :create, artwork_artist_map: { artist_id: @artwork_artist_map.artist_id, artwork: @artwork_artist_map.artwork }
    end

    assert_redirected_to artwork_artist_map_path(assigns(:artwork_artist_map))
  end

  test "should show artwork_artist_map" do
    get :show, id: @artwork_artist_map
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork_artist_map
    assert_response :success
  end

  test "should update artwork_artist_map" do
    patch :update, id: @artwork_artist_map, artwork_artist_map: { artist_id: @artwork_artist_map.artist_id, artwork: @artwork_artist_map.artwork }
    assert_redirected_to artwork_artist_map_path(assigns(:artwork_artist_map))
  end

  test "should destroy artwork_artist_map" do
    assert_difference('ArtworkArtistMap.count', -1) do
      delete :destroy, id: @artwork_artist_map
    end

    assert_redirected_to artwork_artist_maps_path
  end
end

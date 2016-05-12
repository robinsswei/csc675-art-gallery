require 'test_helper'

class ArtworksControllerTest < ActionController::TestCase
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post :create, artwork: { artwork_artist_map_id: @artwork.artwork_artist_map_id, artwork_image_map_id: @artwork.artwork_image_map_id, artwork_seller_map_id: @artwork.artwork_seller_map_id, authentic: @artwork.authentic, date: @artwork.date, description: @artwork.description, edition: @artwork.edition, medium: @artwork.medium, period: @artwork.period, price: @artwork.price, size: @artwork.size, stock: @artwork.stock, subject: @artwork.subject, title: @artwork.title }
    end

    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should show artwork" do
    get :show, id: @artwork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork
    assert_response :success
  end

  test "should update artwork" do
    patch :update, id: @artwork, artwork: { artwork_artist_map_id: @artwork.artwork_artist_map_id, artwork_image_map_id: @artwork.artwork_image_map_id, artwork_seller_map_id: @artwork.artwork_seller_map_id, authentic: @artwork.authentic, date: @artwork.date, description: @artwork.description, edition: @artwork.edition, medium: @artwork.medium, period: @artwork.period, price: @artwork.price, size: @artwork.size, stock: @artwork.stock, subject: @artwork.subject, title: @artwork.title }
    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete :destroy, id: @artwork
    end

    assert_redirected_to artworks_path
  end
end

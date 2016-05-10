require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  setup do
    @artist = artists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist" do
    assert_difference('Artist.count') do
      post :create, artist: { background: @artist.background, country_id: @artist.country_id, date_of_birth: @artist.date_of_birth, email: @artist.email, first_name: @artist.first_name, gender: @artist.gender, last_name: @artist.last_name, phone_number: @artist.phone_number, status: @artist.status }
    end

    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should show artist" do
    get :show, id: @artist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist
    assert_response :success
  end

  test "should update artist" do
    patch :update, id: @artist, artist: { background: @artist.background, country_id: @artist.country_id, date_of_birth: @artist.date_of_birth, email: @artist.email, first_name: @artist.first_name, gender: @artist.gender, last_name: @artist.last_name, phone_number: @artist.phone_number, status: @artist.status }
    assert_redirected_to artist_path(assigns(:artist))
  end

  test "should destroy artist" do
    assert_difference('Artist.count', -1) do
      delete :destroy, id: @artist
    end

    assert_redirected_to artists_path
  end
end

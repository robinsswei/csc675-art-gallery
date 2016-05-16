require 'test_helper'

class SellersControllerTest < ActionController::TestCase
  setup do
    @seller = sellers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sellers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seller" do
    assert_difference('Seller.count') do
      post :create, seller: { address: @seller.address, country_id: @seller.country_id, email: @seller.email, first_name: @seller.first_name, last_name: @seller.last_name, organization_name: @seller.organization_name, phone_number: @seller.phone_number, seller_type: @seller.seller_type }
    end

    assert_redirected_to seller_path(assigns(:seller))
  end

  test "should show seller" do
    get :show, id: @seller
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @seller
    assert_response :success
  end

  test "should update seller" do
    patch :update, id: @seller, seller: { address: @seller.address, country_id: @seller.country_id, email: @seller.email, first_name: @seller.first_name, last_name: @seller.last_name, organization_name: @seller.organization_name, phone_number: @seller.phone_number, seller_type: @seller.seller_type }
    assert_redirected_to seller_path(assigns(:seller))
  end

  test "should destroy seller" do
    assert_difference('Seller.count', -1) do
      delete :destroy, id: @seller
    end

    assert_redirected_to sellers_path
  end
end

require 'test_helper'

class ResidencesControllerTest < ActionController::TestCase
  setup do
    @residence = residences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:residences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create residence" do
    assert_difference('Residence.count') do
      post :create, residence: { address: @residence.address, bathroom: @residence.bathroom, bedroom: @residence.bedroom, building: @residence.building, capacity: @residence.capacity, email: @residence.email, end_date: @residence.end_date, person: @residence.person, phone: @residence.phone, start_date: @residence.start_date }
    end

    assert_redirected_to residence_path(assigns(:residence))
  end

  test "should show residence" do
    get :show, id: @residence
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @residence
    assert_response :success
  end

  test "should update residence" do
    put :update, id: @residence, residence: { address: @residence.address, bathroom: @residence.bathroom, bedroom: @residence.bedroom, building: @residence.building, capacity: @residence.capacity, email: @residence.email, end_date: @residence.end_date, person: @residence.person, phone: @residence.phone, start_date: @residence.start_date }
    assert_redirected_to residence_path(assigns(:residence))
  end

  test "should destroy residence" do
    assert_difference('Residence.count', -1) do
      delete :destroy, id: @residence
    end

    assert_redirected_to residences_path
  end
end

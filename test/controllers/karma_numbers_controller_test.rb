require 'test_helper'

class KarmaNumbersControllerTest < ActionController::TestCase
  setup do
    @karma_number = karma_numbers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:karma_numbers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create karma_number" do
    assert_difference('KarmaNumber.count') do
      post :create, karma_number: { description: @karma_number.description, number: @karma_number.number }
    end

    assert_redirected_to karma_number_path(assigns(:karma_number))
  end

  test "should show karma_number" do
    get :show, id: @karma_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @karma_number
    assert_response :success
  end

  test "should update karma_number" do
    patch :update, id: @karma_number, karma_number: { description: @karma_number.description, number: @karma_number.number }
    assert_redirected_to karma_number_path(assigns(:karma_number))
  end

  test "should destroy karma_number" do
    assert_difference('KarmaNumber.count', -1) do
      delete :destroy, id: @karma_number
    end

    assert_redirected_to karma_numbers_path
  end
end

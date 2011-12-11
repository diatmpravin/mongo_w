require 'test_helper'

class ValidatiionsControllerTest < ActionController::TestCase
  setup do
    @validatiion = validatiions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:validatiions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create validatiion" do
    assert_difference('Validatiion.count') do
      post :create, :validatiion => @validatiion.attributes
    end

    assert_redirected_to validatiion_path(assigns(:validatiion))
  end

  test "should show validatiion" do
    get :show, :id => @validatiion.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @validatiion.to_param
    assert_response :success
  end

  test "should update validatiion" do
    put :update, :id => @validatiion.to_param, :validatiion => @validatiion.attributes
    assert_redirected_to validatiion_path(assigns(:validatiion))
  end

  test "should destroy validatiion" do
    assert_difference('Validatiion.count', -1) do
      delete :destroy, :id => @validatiion.to_param
    end

    assert_redirected_to validatiions_path
  end
end

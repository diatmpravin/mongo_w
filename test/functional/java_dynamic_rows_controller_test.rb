require 'test_helper'

class JavaDynamicRowsControllerTest < ActionController::TestCase
  setup do
    @java_dynamic_row = java_dynamic_rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:java_dynamic_rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create java_dynamic_row" do
    assert_difference('JavaDynamicRow.count') do
      post :create, :java_dynamic_row => @java_dynamic_row.attributes
    end

    assert_redirected_to java_dynamic_row_path(assigns(:java_dynamic_row))
  end

  test "should show java_dynamic_row" do
    get :show, :id => @java_dynamic_row.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @java_dynamic_row.to_param
    assert_response :success
  end

  test "should update java_dynamic_row" do
    put :update, :id => @java_dynamic_row.to_param, :java_dynamic_row => @java_dynamic_row.attributes
    assert_redirected_to java_dynamic_row_path(assigns(:java_dynamic_row))
  end

  test "should destroy java_dynamic_row" do
    assert_difference('JavaDynamicRow.count', -1) do
      delete :destroy, :id => @java_dynamic_row.to_param
    end

    assert_redirected_to java_dynamic_rows_path
  end
end

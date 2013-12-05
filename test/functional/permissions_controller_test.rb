require 'test_helper'

class PermissionsControllerTest < ActionController::TestCase
  setup do
    @permission = permissions(:one)
    @permission.category = categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permission" do
    assert_difference('Permission.count') do
      post :create, permission: { name: @permission.name, category_id: @permission.category.id }
    end

    assert_redirected_to permission_path(assigns(:permission))
  end

  test "should show permission" do
    @permission.save
    get :show, id: @permission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permission
    assert_response :success
  end

  test "should update permission" do
    put :update, id: @permission, permission: { name: @permission.name, category_id: @permission.category.id }
    assert_redirected_to permission_path(assigns(:permission))
  end

  test "should destroy permission" do
    assert_difference('Permission.count', -1) do
      delete :destroy, id: @permission
    end

    assert_redirected_to permissions_path
  end
end

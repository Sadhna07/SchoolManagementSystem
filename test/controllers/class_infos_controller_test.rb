require 'test_helper'

class ClassInfosControllerTest < ActionController::TestCase
  setup do
    @class_info = class_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:class_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class_info" do
    assert_difference('ClassInfo.count') do
      post :create, class_info: { class_id: @class_info.class_id, class_name: @class_info.class_name, maximum_limit: @class_info.maximum_limit }
    end

    assert_redirected_to class_info_path(assigns(:class_info))
  end

  test "should show class_info" do
    get :show, id: @class_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class_info
    assert_response :success
  end

  test "should update class_info" do
    patch :update, id: @class_info, class_info: { class_id: @class_info.class_id, class_name: @class_info.class_name, maximum_limit: @class_info.maximum_limit }
    assert_redirected_to class_info_path(assigns(:class_info))
  end

  test "should destroy class_info" do
    assert_difference('ClassInfo.count', -1) do
      delete :destroy, id: @class_info
    end

    assert_redirected_to class_infos_path
  end
end

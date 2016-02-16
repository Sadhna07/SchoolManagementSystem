require 'test_helper'

class AttendenceInfosControllerTest < ActionController::TestCase
  setup do
    @attendence_info = attendence_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attendence_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attendence_info" do
    assert_difference('AttendenceInfo.count') do
      post :create, attendence_info: { class_id: @attendence_info.class_id, record_date: @attendence_info.record_date, status: @attendence_info.status, student_id: @attendence_info.student_id }
    end

    assert_redirected_to attendence_info_path(assigns(:attendence_info))
  end

  test "should show attendence_info" do
    get :show, id: @attendence_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attendence_info
    assert_response :success
  end

  test "should update attendence_info" do
    patch :update, id: @attendence_info, attendence_info: { class_id: @attendence_info.class_id, record_date: @attendence_info.record_date, status: @attendence_info.status, student_id: @attendence_info.student_id }
    assert_redirected_to attendence_info_path(assigns(:attendence_info))
  end

  test "should destroy attendence_info" do
    assert_difference('AttendenceInfo.count', -1) do
      delete :destroy, id: @attendence_info
    end

    assert_redirected_to attendence_infos_path
  end
end

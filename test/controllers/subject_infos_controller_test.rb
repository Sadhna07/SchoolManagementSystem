require 'test_helper'

class SubjectInfosControllerTest < ActionController::TestCase
  setup do
    @subject_info = subject_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subject_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subject_info" do
    assert_difference('SubjectInfo.count') do
      post :create, subject_info: { exam_id: @subject_info.exam_id, maximum_marks: @subject_info.maximum_marks, subject_id: @subject_info.subject_id, subject_name: @subject_info.subject_name }
    end

    assert_redirected_to subject_info_path(assigns(:subject_info))
  end

  test "should show subject_info" do
    get :show, id: @subject_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subject_info
    assert_response :success
  end

  test "should update subject_info" do
    patch :update, id: @subject_info, subject_info: { exam_id: @subject_info.exam_id, maximum_marks: @subject_info.maximum_marks, subject_id: @subject_info.subject_id, subject_name: @subject_info.subject_name }
    assert_redirected_to subject_info_path(assigns(:subject_info))
  end

  test "should destroy subject_info" do
    assert_difference('SubjectInfo.count', -1) do
      delete :destroy, id: @subject_info
    end

    assert_redirected_to subject_infos_path
  end
end

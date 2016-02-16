require 'test_helper'

class ResultInfosControllerTest < ActionController::TestCase
  setup do
    @result_info = result_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:result_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create result_info" do
    assert_difference('ResultInfo.count') do
      post :create, result_info: { exam_id: @result_info.exam_id, marks_obtained: @result_info.marks_obtained, student_id: @result_info.student_id, subject_id: @result_info.subject_id }
    end

    assert_redirected_to result_info_path(assigns(:result_info))
  end

  test "should show result_info" do
    get :show, id: @result_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @result_info
    assert_response :success
  end

  test "should update result_info" do
    patch :update, id: @result_info, result_info: { exam_id: @result_info.exam_id, marks_obtained: @result_info.marks_obtained, student_id: @result_info.student_id, subject_id: @result_info.subject_id }
    assert_redirected_to result_info_path(assigns(:result_info))
  end

  test "should destroy result_info" do
    assert_difference('ResultInfo.count', -1) do
      delete :destroy, id: @result_info
    end

    assert_redirected_to result_infos_path
  end
end

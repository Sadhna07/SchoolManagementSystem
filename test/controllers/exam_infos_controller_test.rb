require 'test_helper'

class ExamInfosControllerTest < ActionController::TestCase
  setup do
    @exam_info = exam_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_info" do
    assert_difference('ExamInfo.count') do
      post :create, exam_info: { class_id: @exam_info.class_id, exam_id: @exam_info.exam_id, exam_name: @exam_info.exam_name }
    end

    assert_redirected_to exam_info_path(assigns(:exam_info))
  end

  test "should show exam_info" do
    get :show, id: @exam_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_info
    assert_response :success
  end

  test "should update exam_info" do
    patch :update, id: @exam_info, exam_info: { class_id: @exam_info.class_id, exam_id: @exam_info.exam_id, exam_name: @exam_info.exam_name }
    assert_redirected_to exam_info_path(assigns(:exam_info))
  end

  test "should destroy exam_info" do
    assert_difference('ExamInfo.count', -1) do
      delete :destroy, id: @exam_info
    end

    assert_redirected_to exam_infos_path
  end
end

require 'test_helper'

class ExerciseListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercise_list = exercise_lists(:one)
  end

  test "should get index" do
    get exercise_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_exercise_list_url
    assert_response :success
  end

  test "should create exercise_list" do
    assert_difference('ExerciseList.count') do
      post exercise_lists_url, params: { exercise_list: { bodypart: @exercise_list.bodypart, exercise_name: @exercise_list.exercise_name } }
    end

    assert_redirected_to exercise_list_url(ExerciseList.last)
  end

  test "should show exercise_list" do
    get exercise_list_url(@exercise_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercise_list_url(@exercise_list)
    assert_response :success
  end

  test "should update exercise_list" do
    patch exercise_list_url(@exercise_list), params: { exercise_list: { bodypart: @exercise_list.bodypart, exercise_name: @exercise_list.exercise_name } }
    assert_redirected_to exercise_list_url(@exercise_list)
  end

  test "should destroy exercise_list" do
    assert_difference('ExerciseList.count', -1) do
      delete exercise_list_url(@exercise_list)
    end

    assert_redirected_to exercise_lists_url
  end
end

require 'test_helper'

class ExerciseSetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @exercise_set = exercise_sets(:one)
  end

  test "should get index" do
    get exercise_sets_url
    assert_response :success
  end

  test "should get new" do
    get new_exercise_set_url
    assert_response :success
  end

  test "should create exercise_set" do
    assert_difference('ExerciseSet.count') do
      post exercise_sets_url, params: { exercise_set: { notes: @exercise_set.notes, previous: @exercise_set.previous, reps: @exercise_set.reps, weight_lbs: @exercise_set.weight_lbs } }
    end

    assert_redirected_to exercise_set_url(ExerciseSet.last)
  end

  test "should show exercise_set" do
    get exercise_set_url(@exercise_set)
    assert_response :success
  end

  test "should get edit" do
    get edit_exercise_set_url(@exercise_set)
    assert_response :success
  end

  test "should update exercise_set" do
    patch exercise_set_url(@exercise_set), params: { exercise_set: { notes: @exercise_set.notes, previous: @exercise_set.previous, reps: @exercise_set.reps, weight_lbs: @exercise_set.weight_lbs } }
    assert_redirected_to exercise_set_url(@exercise_set)
  end

  test "should destroy exercise_set" do
    assert_difference('ExerciseSet.count', -1) do
      delete exercise_set_url(@exercise_set)
    end

    assert_redirected_to exercise_sets_url
  end
end

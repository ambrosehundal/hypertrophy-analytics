require "application_system_test_case"

class ExerciseSetsTest < ApplicationSystemTestCase
  setup do
    @exercise_set = exercise_sets(:one)
  end

  test "visiting the index" do
    visit exercise_sets_url
    assert_selector "h1", text: "Exercise Sets"
  end

  test "creating a Exercise set" do
    visit exercise_sets_url
    click_on "New Exercise Set"

    fill_in "Notes", with: @exercise_set.notes
    fill_in "Previous", with: @exercise_set.previous
    fill_in "Reps", with: @exercise_set.reps
    fill_in "Weight lbs", with: @exercise_set.weight_lbs
    click_on "Create Exercise set"

    assert_text "Exercise set was successfully created"
    click_on "Back"
  end

  test "updating a Exercise set" do
    visit exercise_sets_url
    click_on "Edit", match: :first

    fill_in "Notes", with: @exercise_set.notes
    fill_in "Previous", with: @exercise_set.previous
    fill_in "Reps", with: @exercise_set.reps
    fill_in "Weight lbs", with: @exercise_set.weight_lbs
    click_on "Update Exercise set"

    assert_text "Exercise set was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercise set" do
    visit exercise_sets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercise set was successfully destroyed"
  end
end

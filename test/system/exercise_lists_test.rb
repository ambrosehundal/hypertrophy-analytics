require "application_system_test_case"

class ExerciseListsTest < ApplicationSystemTestCase
  setup do
    @exercise_list = exercise_lists(:one)
  end

  test "visiting the index" do
    visit exercise_lists_url
    assert_selector "h1", text: "Exercise Lists"
  end

  test "creating a Exercise list" do
    visit exercise_lists_url
    click_on "New Exercise List"

    fill_in "Bodypart", with: @exercise_list.bodypart
    fill_in "Exercise name", with: @exercise_list.exercise_name
    click_on "Create Exercise list"

    assert_text "Exercise list was successfully created"
    click_on "Back"
  end

  test "updating a Exercise list" do
    visit exercise_lists_url
    click_on "Edit", match: :first

    fill_in "Bodypart", with: @exercise_list.bodypart
    fill_in "Exercise name", with: @exercise_list.exercise_name
    click_on "Update Exercise list"

    assert_text "Exercise list was successfully updated"
    click_on "Back"
  end

  test "destroying a Exercise list" do
    visit exercise_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exercise list was successfully destroyed"
  end
end

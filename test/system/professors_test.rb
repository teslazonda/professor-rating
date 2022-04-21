require "application_system_test_case"

class ProfessorsTest < ApplicationSystemTestCase
  setup do
    @professor = professors(:one)
  end

  test "visiting the index" do
    visit professors_url
    assert_selector "h1", text: "Professors"
  end

  test "should create professor" do
    visit professors_url
    click_on "New professor"

    fill_in "Difficulty", with: @professor.difficulty
    fill_in "Name", with: @professor.name
    fill_in "Rating", with: @professor.rating
    fill_in "Subject", with: @professor.subject
    click_on "Create Professor"

    assert_text "Professor was successfully created"
    click_on "Back"
  end

  test "should update Professor" do
    visit professor_url(@professor)
    click_on "Edit this professor", match: :first

    fill_in "Difficulty", with: @professor.difficulty
    fill_in "Name", with: @professor.name
    fill_in "Rating", with: @professor.rating
    fill_in "Subject", with: @professor.subject
    click_on "Update Professor"

    assert_text "Professor was successfully updated"
    click_on "Back"
  end

  test "should destroy Professor" do
    visit professor_url(@professor)
    click_on "Destroy this professor", match: :first

    assert_text "Professor was successfully destroyed"
  end
end

require "application_system_test_case"

class StudentStoriesTest < ApplicationSystemTestCase
  setup do
    @student_story = student_stories(:one)
  end

  test "visiting the index" do
    visit student_stories_url
    assert_selector "h1", text: "Student stories"
  end

  test "should create student story" do
    visit student_stories_url
    click_on "New student story"

    fill_in "Date", with: @student_story.date
    fill_in "Text", with: @student_story.text
    fill_in "Title", with: @student_story.title
    click_on "Create Student story"

    assert_text "Student story was successfully created"
    click_on "Back"
  end

  test "should update Student story" do
    visit student_story_url(@student_story)
    click_on "Edit this student story", match: :first

    fill_in "Date", with: @student_story.date
    fill_in "Text", with: @student_story.text
    fill_in "Title", with: @student_story.title
    click_on "Update Student story"

    assert_text "Student story was successfully updated"
    click_on "Back"
  end

  test "should destroy Student story" do
    visit student_story_url(@student_story)
    click_on "Destroy this student story", match: :first

    assert_text "Student story was successfully destroyed"
  end
end

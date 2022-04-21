require "test_helper"

class StudentStoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_story = student_stories(:one)
  end

  test "should get index" do
    get student_stories_url
    assert_response :success
  end

  test "should get new" do
    get new_student_story_url
    assert_response :success
  end

  test "should create student_story" do
    assert_difference("StudentStory.count") do
      post student_stories_url, params: { student_story: { date: @student_story.date, text: @student_story.text, title: @student_story.title } }
    end

    assert_redirected_to student_story_url(StudentStory.last)
  end

  test "should show student_story" do
    get student_story_url(@student_story)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_story_url(@student_story)
    assert_response :success
  end

  test "should update student_story" do
    patch student_story_url(@student_story), params: { student_story: { date: @student_story.date, text: @student_story.text, title: @student_story.title } }
    assert_redirected_to student_story_url(@student_story)
  end

  test "should destroy student_story" do
    assert_difference("StudentStory.count", -1) do
      delete student_story_url(@student_story)
    end

    assert_redirected_to student_stories_url
  end
end

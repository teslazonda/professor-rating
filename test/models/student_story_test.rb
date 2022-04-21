require 'test_helper'

class StudentStoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save student_story without name' do
    student_story = StudentStory.new
    assert_not student_story.save, 'Saved a student_story without a name'
  end
end

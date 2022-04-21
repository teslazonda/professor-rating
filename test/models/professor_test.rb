require "test_helper"

class ProfessorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save professor without name' do
    professor = Professor.new
    assert_not professor.save, 'Saved a professor without a name'
  end
end

class AddForeignKeyToProfessors < ActiveRecord::Migration[7.0]
  def change
    add_reference :student_stories, :professor, index: true, foreign_key: true
  end
end

class CreateStudentStories < ActiveRecord::Migration[7.0]
  def change
    create_table :student_stories do |t|
      t.string :title
      t.string :text
      t.date :date

      t.timestamps
    end
  end
end

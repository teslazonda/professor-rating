class CreateProfessors < ActiveRecord::Migration[7.0]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :subject
      t.decimal :rating
      t.decimal :difficulty

      t.timestamps
    end
  end
end

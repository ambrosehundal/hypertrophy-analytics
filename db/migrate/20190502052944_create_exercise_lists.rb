class CreateExerciseLists < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_lists do |t|
      t.string :exercise_name
      t.string :bodypart

      t.timestamps
    end
  end
end

class CreateExerciseSets < ActiveRecord::Migration[5.2]
  def change
    create_table :exercise_sets do |t|
      t.integer :weight_lbs
      t.integer :reps
      t.text :previous
      t.text :notes

      t.timestamps
    end
  end
end

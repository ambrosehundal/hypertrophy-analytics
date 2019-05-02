class ExerciseNotes < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :exercise_notes, :string
  end
end

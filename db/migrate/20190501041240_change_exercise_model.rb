class ChangeExerciseModel < ActiveRecord::Migration[5.2]
  def change
    remove_column :exercises, :reps, :integer
    remove_column :exercises, :recommended_sets, :text
    add_column :exercises, :sets_performed, :integer
  end
end

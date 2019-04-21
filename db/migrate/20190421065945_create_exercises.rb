class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :reps
      t.text :recommended_sets
      t.text :equipment_type
      t.text :main_body_part

      t.timestamps
    end
  end
end

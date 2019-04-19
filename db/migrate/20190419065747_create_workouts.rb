class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.boolean :cardio
      t.date :workout_date
      t.users :references

      t.timestamps
    end
  end
end

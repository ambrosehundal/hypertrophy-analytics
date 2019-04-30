class AddworkoutidToExercises < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercises, :workout, index:true
  end
end

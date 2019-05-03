class SetsmodelChange < ActiveRecord::Migration[5.2]
  def change
    add_reference :exercise_sets, :exercise, index:true
  end
end

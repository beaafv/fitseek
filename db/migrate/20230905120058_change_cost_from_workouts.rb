class ChangeCostFromWorkouts < ActiveRecord::Migration[7.0]
  def change
    remove_column :workouts, :cost, :integer
    add_column :workouts, :cost, :integer, default: 0
  end
end

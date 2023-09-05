class ChangeFsDollarsFromUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :fsdollars, :integer, default: 200
  end
end

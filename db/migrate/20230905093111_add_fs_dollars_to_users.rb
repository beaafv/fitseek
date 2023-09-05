class AddFsDollarsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :fsdollars, :integer, default: 0
  end
end

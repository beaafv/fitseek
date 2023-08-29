class CreateWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :category
      t.string :subcategory
      t.text :description
      t.string :address
      t.string :image
      t.time :available_class_times
      t.integer :duration
      t.string :contact
      t.references :instructor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

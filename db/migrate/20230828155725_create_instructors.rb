class CreateInstructors < ActiveRecord::Migration[7.0]
  def change
    create_table :instructors do |t|
      t.string :name
      t.text :bio
      t.integer :years_experience
      t.string :certifications
      t.string :area_of_expertise
      t.string :image

      t.timestamps
    end
  end
end

class CreateFatherPets < ActiveRecord::Migration[7.0]
  def change
    create_table :father_pets do |t|
      t.string :name
      t.string :color
      t.date :birthday
      t.text :image_path
      t.string :memo

      t.timestamps
    end
  end
end

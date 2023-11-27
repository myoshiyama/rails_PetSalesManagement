class CreateBreedingPets < ActiveRecord::Migration[7.0]
  def change
    create_table :breeding_pets do |t|
      t.string :color
      t.integer :breeding_period
      t.string :gender
      t.decimal :sales_price
      t.date :sales_day
      t.date :birthday
      t.integer :weight
      t.text :breeding_memo
      t.text :image_path
      t.string :change_parent_cat
      t.bigint :customer_id, null: false
      t.bigint :fatherpet_id, null: false
      t.bigint :motherpet_id, null: false

      t.timestamps
    end

    add_foreign_key :breeding_pets, :customers, column: :customer_id
    add_foreign_key :breeding_pets, :father_pets, column: :fatherpet_id
    add_foreign_key :breeding_pets, :mother_pets, column: :motherpet_id
  end
end

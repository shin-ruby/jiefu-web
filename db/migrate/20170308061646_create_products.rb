class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :category
      t.string :name
      t.decimal :size_length, precision: 4, scale: 1
      t.decimal :size_width, precision: 4, scale: 1
      t.decimal :size_height, precision: 4, scale: 1
      t.string :impedance
      t.integer :fo
      t.integer :rated_power
      t.integer :sensitivity
      t.string :frequency
      t.text :feature

      t.timestamps
    end
    add_index :products, :name, unique: true
  end
end

class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.integer :category
      t.integer :product_type
      t.integer :min_fo
      t.integer :max_fo

      t.timestamps
    end
  end
end

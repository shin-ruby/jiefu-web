class AddPhoto2ToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :photo2, :string
    add_column :products, :configuration1, :string
    add_column :products, :configuration2, :string
    add_column :products, :curve1, :string
    add_column :products, :curve2, :string
  end
end

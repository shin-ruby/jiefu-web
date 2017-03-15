class AddPhoto1ToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :photo1, :string
  end
end

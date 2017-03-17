class ChangeHomeNewproduct6 < ActiveRecord::Migration[5.0]
  def change
  	rename_column :homes, :newprodect6, :newproduct6
  end
end

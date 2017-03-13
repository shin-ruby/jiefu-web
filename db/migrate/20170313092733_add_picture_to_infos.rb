class AddPictureToInfos < ActiveRecord::Migration[5.0]
  def change
    add_column :infos, :picture, :string
  end
end

class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :mobile
      t.string :email
      t.string :company
      t.text :content

      t.timestamps
    end
  end
end

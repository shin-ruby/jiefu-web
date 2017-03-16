class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.text :summary
      t.text :introduce
      t.text :course
      t.text :ceo

      t.timestamps
    end
  end
end

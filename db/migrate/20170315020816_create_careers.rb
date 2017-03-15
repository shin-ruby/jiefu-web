class CreateCareers < ActiveRecord::Migration[5.0]
  def change
    create_table :careers do |t|
      t.string :position
      t.string :place
      t.integer :people
      t.text :content

      t.timestamps
    end
  end
end

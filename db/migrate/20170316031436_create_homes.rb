class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :copywrite1
      t.string :copywrite2
      t.string :newproduct1
      t.string :newproduct2
      t.string :newproduct3
      t.string :newproduct4
      t.string :newproduct5
      t.string :newprodect6
      t.string :mainproduct1
      t.string :mainproduct2
      t.string :mainproduct3
      t.string :mainproduct4
      t.text :advantage

      t.timestamps
    end
  end
end

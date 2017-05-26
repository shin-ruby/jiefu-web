class TranslateHomes < ActiveRecord::Migration[5.0]
  def change

  	reversible do |dir|
      dir.up do
        Home.create_translation_table!({
          :copywrite1 => :string,
          :copywrite2 => :string,
          :advantage => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Home.drop_translation_table! :migrate_data => true
      end
    end

  end
end

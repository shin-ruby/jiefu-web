class TranslationCareer < ActiveRecord::Migration[5.0]
  def change

    reversible do |dir|
      dir.up do
        Career.create_translation_table!({
            :position => :string,
            :place => :string,
            :content => :text
          }, {
            :migrate_data => true
        })
      end

      dir.down do
        Career.drop_translation_table! :migrate_data => true
      end
    end

  end
end

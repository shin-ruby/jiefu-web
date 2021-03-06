class TranslationInfos < ActiveRecord::Migration[5.0]
  def change

  	reversible do |dir|
  		dir.up do
  			Info.create_translation_table!({
  				  :title => :string,
  				  :content => :text
  				}, {
  					:migrate_data => true
  			})
  		end

  		dir.down do
  			Info.drop_translation_table! :migrate_data => true
  		end
  	end

  end
end

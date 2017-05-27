class TranslateAbout < ActiveRecord::Migration[5.0]
  def change

  	reversible do |dir|
  		dir.up do
  			About.create_translation_table!({
  				  :summary => :text,
  				  :introduce => :text,
  				  :course => :text,
  				  :ceo => :text
  				}, {
  					:migrate_data => true
  			})
  		end

  		dir.down do
  			About.drop_translation_table! :migrate_data => true
  		end
  	end

  end
end

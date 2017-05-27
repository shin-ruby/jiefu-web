class TranslateProducts < ActiveRecord::Migration[5.0]
  def change

  	reversible do |dir|
  		dir.up do
  			Product.create_translation_table!({
  				  :feature => :text
  				}, {
  					:migrate_data => true
  			})
  		end

  		dir.down do
  			Product.drop_translation_table! :migrate_data => true
  		end
  	end

  end
end

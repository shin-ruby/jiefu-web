class TranslationLaboratory < ActiveRecord::Migration[5.0]
  def change

  	reversible do |dir|
  		dir.up do
  			Laboratory.create_translation_table!({
  				  :laboratory_title_content => :text,
  				  :rd_title => :string,
  				  :rd_content => :text,
  				  :hsf_title => :string,
  				  :hsf_content => :text,
  				  :hsf_list => :text,
  				  :multimedia_title => :string,
  				  :multimedia_content => :text,
  				  :multimedia_list => :text,
  				  :power_title => :string,
  				  :power_content => :text,
  				  :power_list => :text,
  				  :mechanical_title => :string,
  				  :mechanical_content => :text,
  				  :mechanical_list => :text,
  				  :chemistry_title => :string,
  				  :chemistry_content => :text,
  				  :chemistry_list => :text,
  				  :audio_title => :string,
  				  :audio_content => :text,
  				  :audio_list => :text,
  				  :anechoic_title => :string,
  				  :anechoic_content => :text,
  				  :anechoic_list => :text,
  				  :subjectivity_title => :string,
  				  :subjectivity_content => :text,
  				  :subjectivity_list => :text,
  				  :salt_title => :string,
  				  :salt_content => :text,
  				  :salt_list => :text
  				}, {
  					:migrate_data => true
  			})
  		end

  		dir.down do
  			Laboratory.drop_translation_table! :migrate_data => true
  		end
  	end

  end
end
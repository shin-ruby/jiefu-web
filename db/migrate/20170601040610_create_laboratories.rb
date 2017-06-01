class CreateLaboratories < ActiveRecord::Migration[5.0]
  def change
    create_table :laboratories do |t|
      t.text :laboratory_title_content
      t.string :rd_title
      t.text :rd_content
      t.string :hsf_title
      t.text :hsf_content
      t.text :hsf_list
      t.string :multimedia_title
      t.text :multimedia_content
      t.text :multimedia_list
      t.string :power_title
      t.text :power_content
      t.text :power_list
      t.string :mechanical_title
      t.text :mechanical_content
      t.text :mechanical_list
      t.string :chemistry_title
      t.text :chemistry_content
      t.text :chemistry_list
      t.string :audio_title
      t.text :audio_content
      t.text :audio_list
      t.string :anechoic_title
      t.text :anechoic_content
      t.text :anechoic_list
      t.string :subjectivity_title
      t.text :subjectivity_content
      t.text :subjectivity_list
      t.string :salt_title
      t.text :salt_content
      t.text :salt_list

      t.timestamps
    end
  end
end

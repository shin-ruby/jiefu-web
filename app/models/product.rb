class Product < ApplicationRecord
	validates :name, presence: true, uniqueness: { case_sensitive: false }
	validates :photo1, presence: true
	validates :photo2, presence: true

	translates :feature

	mount_uploader :photo1, PhotoUploader
	mount_uploader :photo2, PhotoUploader
	mount_uploader :configuration1, PhotoUploader
	mount_uploader :configuration2, PhotoUploader
	mount_uploader :curve1, PhotoUploader
	mount_uploader :curve2, PhotoUploader



	# def self.search(search)
	#   if search
	#     where("name = ?", "#{search}")
	#   else
	#     all
	#   end
	# end


end

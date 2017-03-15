class PhotoUploader < BaseUploader
	def filename
    if super.present?
      "photo/"
    end
  end
end

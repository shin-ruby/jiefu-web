class PhotoUploader < BaseUploader
 #  def filename
 #    if super.present?
 #      "photo/"
 #    end
 #  end

  # version :thumb do
  #   process resize_to_fit: [600, 600]
  # end
 
  process make_watermark: 'app/assets/images/jiefuailogo.png' 

	def make_watermark(watermark)
	  manipulate! do |img|
	    img = img.composite(MiniMagick::Image.open(watermark, 'png')) do |c|
	      c.gravity 'Center'
	    end
	    img = yield(img) if block_given?
	    img
	  end
	end

	process resize_to_fit: [600, 600]

# first_image = MiniMagick::Image.new("photo.png")
# second_image = MiniMagick::Image.new("jiefuailogo.png")

# result = first_image.composite(second_image) do |c|
# 	c.compose "Over"
# 	c.gravity "Center"
# end

end

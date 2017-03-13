module ApplicationHelper

	def full_title(page_title = '')
		base_title = "无锡杰夫电声股份有限公司"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

	def full_category(category)
  	if category == 1
  		'电视扬声器'
  	else
  		'其他扬声器'
  	end
  end

end

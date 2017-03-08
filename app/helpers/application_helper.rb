module ApplicationHelper

	def full_title(page_title = '')
		base_title = "无锡杰夫电声股份有限公司"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end

end

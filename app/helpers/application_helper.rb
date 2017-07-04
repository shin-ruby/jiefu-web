module ApplicationHelper

	def full_title(page_title = '')
		base_title = t("title")
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

  def full_product_type(product_type)
    if product_type == 1
      '单体扬声器'
    else
      '箱体扬声器'
    end
  end

  def info_category(category)
  	if category == 1
  		I18n.t("infos.news")
  	elsif category == 2
  		I18n.t("infos.announcement")
  	else
  		I18n.t("infos.information")
  	end
  end

  def prodcut_find(name)
    Product.find_by(name: name)
  end

  def is_active_controller(controller_name)
    params[:controller] == controller_name ? "active" : nil
  end

  def is_active_action(action_name)
    params[:action] == action_name ? "active" : nil
  end


end

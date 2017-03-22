module Admin
	class HomeController < Admin::ApplicationController
    before_action :logged_in_user
    
	  def show
	  	@home = Home.first
	  end

	  def edit
	  	@home = Home.first
    end

    def update
    	@home = Home.first
      respond_to do |format|
        if @home.update(params[:home].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_home_url }
        else
          format.html { render edit_admin_home_path(@home) }
        end
      end
    end

	end
end

module Admin
	class AboutController < Admin::ApplicationController
	  def show
	  	@about = About.first
	  end

	  def edit
	  	@about = About.first
    end

    def update
    	@about = About.first
      respond_to do |format|
        if @about.update(params[:about].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_about_url }
        else
          format.html { render edit_admin_about_path(@about) }
        end
      end
    end

	end
end

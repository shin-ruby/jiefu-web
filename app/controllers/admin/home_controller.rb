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
        if Product.find_by(name: params[:home][:mainproduct1]) &&
           Product.find_by(name: params[:home][:mainproduct2]) &&
           Product.find_by(name: params[:home][:mainproduct3]) &&
           Product.find_by(name: params[:home][:mainproduct4]) &&
           Product.find_by(name: params[:home][:newproduct1]) &&
           Product.find_by(name: params[:home][:newproduct2]) &&
           Product.find_by(name: params[:home][:newproduct3]) &&
           Product.find_by(name: params[:home][:newproduct4]) 
          @home.update(params[:home].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_home_url }
        else
          flash[:danger] = "更新失败!"
          format.html { redirect_to admin_home_url }
        end   
      end
    end

	end
end


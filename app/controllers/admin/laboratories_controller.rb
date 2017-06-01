module Admin
  class LaboratoriesController < Admin::ApplicationController
    before_action :logged_in_user

    def show
      @laboratory = Laboratory.first
    end

    def edit
      @laboratory = Laboratory.first
    end


    def update
      @laboratory = Laboratory.first
      respond_to do |format|
        if @laboratory.update(params[:laboratory].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_laboratory_url }
        else
          format.html { render edit_admin_laboratory_path(@laboratory) }
        end
      end
    end

  end
end

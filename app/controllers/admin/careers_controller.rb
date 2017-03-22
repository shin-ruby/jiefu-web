module Admin
  class CareersController < Admin::ApplicationController
    before_action :logged_in_user
    
    before_action :set_career, only: [:show, :edit, :update, :destroy]

    # GET /admin/careers
    # GET /admin/careers.json
    def index
      @careers = Career.all
    end

    # GET /admin/careers/1
    # GET /admin/careers/1.json
    def show
    end

    # GET /admin/careers/new
    def new
      @career = Career.new
    end

    # GET /admin/careers/1/edit
    def edit
    end

    # POST /admin/careers
    # POST /admin/careers.json
    def create
      @career = Career.new(params[:career].permit!)
      flash[:success] = "创建成功!"
      respond_to do |format|
        if @career.save
          format.html { redirect_to admin_careers_url }
        else
          format.html { render :new }
        end
      end
    end

    # PATCH/PUT /admin/careers/1
    # PATCH/PUT /admin/careers/1.json
    def update
      respond_to do |format|
        if @career.update(params[:career].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_careers_url }
        else
          format.html { render :edit }
        end
      end
    end

    # DELETE /admin/careers/1
    # DELETE /admin/careers/1.json
    def destroy
      @career.destroy
      flash[:success] = "删除成功!"
      respond_to do |format|
        format.html { redirect_to admin_careers_url}
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_career
        @career = Career.find(params[:id])
      end
  end
end

module Admin
  class ProductsController < Admin::ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]

    # GET /admin/products
    # GET /admin/products.json
    def index
      @products = Product.all
    end

    # GET /admin/products/1
    # GET /admin/products/1.json
    def show
    end

    # GET /admin/products/new
    def new
      @product = Product.new
    end

    # GET /admin/products/1/edit
    def edit

    end

    # POST /admin/products
    # POST /admin/products.json
    def create
      @product = Product.new(params[:product].permit!)

      respond_to do |format|
        if @product.save
          flash[:success] = "创建成功!"
          format.html { redirect_to admin_products_url }
        else
          format.html { render :new }
        end
      end
    end

    # PATCH/PUT /admin/products/1
    # PATCH/PUT /admin/products/1.json
    def update
      respond_to do |format|
        if @product.update(params[:product].permit!)
          flash[:success] = "更新成功!"
          format.html { redirect_to admin_products_url }
        else
          format.html { render :edit }
        end
      end
    end

    # DELETE /admin/products/1
    # DELETE /admin/products/1.json
    def destroy
      @product.destroy
      flash[:success] = "删除成功!"
      respond_to do |format|
        format.html { redirect_to admin_products_url }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_product
        @product = Product.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
  end
end

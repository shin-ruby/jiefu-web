class ProductsController < ApplicationController

  def index
  	# @products = Product.search(params[:search])
  	# @products = Product.where(category: params[:category])
  	@products = Product.paginate(page: params[:page], :per_page => 12)
  end

  def show
  	@product = Product.find(params[:id])
  end
end

class SearchesController < ApplicationController
  def show
    @search = Search.create!(search_params)
  end

  private

  def search_params
    params.require(:search).permit(:name, :category, :product_type, :min_fo, :max_fo, :min_rated_power,
                                   :max_rated_power, :min_sensitivity, :max_sensitivity,
                                   :min_size_length, :max_size_length, :min_size_width, :max_size_width,
                                   :min_size_height, :max_size_height) if params[:search].present?
  end
end

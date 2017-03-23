class Search < ApplicationRecord
  def products
    @products ||= find_products
  end

  private

  def find_products
    return Product.none if attributes.except('id', 'created_at', 'updated_at').all? { |_k, v| v.blank? }
    products = Product.order(:name)
    products = products.where("name like ?", "%#{name}%") if name.present?

    products = products.where(category: category) if category.present?
    products = products.where(product_type: product_type) if product_type.present?
    
    products = products.where("fo >= ?", min_fo) if min_fo.present?
    products = products.where("fo <= ?", max_fo) if max_fo.present?

    products = products.where("rated_power >= ?", min_rated_power) if min_rated_power.present?
    products = products.where("rated_power <= ?", max_rated_power) if max_rated_power.present?

    products = products.where("sensitivity >= ?", min_sensitivity) if min_sensitivity.present?
    products = products.where("sensitivity <= ?", max_sensitivity) if max_sensitivity.present?

    products = products.where("size_length >= ?", min_size_length) if min_size_length.present?
    products = products.where("size_length <= ?", max_size_length) if max_size_length.present?

    products = products.where("size_width >= ?", min_size_width) if min_size_width.present?
    products = products.where("size_width <= ?", max_size_width) if max_size_width.present?

    products = products.where("size_height >= ?", min_size_height) if min_size_height.present?
    products = products.where("size_height <= ?", max_size_height) if max_size_height.present?

    products
  end
end

Rails.application.routes.draw do
  root 'static_pages#home'
  get 'contact' => 'static_pages#contact'
  get 'product' => 'static_pages#product'
  get 'product_detail' => 'static_pages#product_detail'
end

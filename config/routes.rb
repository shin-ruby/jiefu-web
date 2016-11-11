Rails.application.routes.draw do
  root 'static_pages#home'
  get 'support' => 'static_pages#support'
  get 'product' => 'static_pages#product'
  get 'product_detail' => 'static_pages#product_detail'
end

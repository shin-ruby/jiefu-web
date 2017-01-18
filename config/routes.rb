Rails.application.routes.draw do
  root 'static_pages#home'
  get 'support' => 'static_pages#support'
  get 'product' => 'static_pages#product'
  get 'product_detail' => 'static_pages#product_detail'

  get 'news' => 'static_pages#news'
  get 'news_list' => 'static_pages#news_list'
  get 'news_content' => 'static_pages#news_content'
  
  get 'about' => 'static_pages#about'
end

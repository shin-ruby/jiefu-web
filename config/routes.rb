Rails.application.routes.draw do
  root 'static_pages#home'
  get 'product' => 'static_pages#product'
  get 'product_detail' => 'static_pages#product_detail'
  get 'laboratory' => 'static_pages#laboratory'
  get 'support' => 'static_pages#support'

  get 'news' => 'static_pages#news'
  get 'news_list' => 'static_pages#news_list'
  get 'news_content' => 'static_pages#news_content'
  
  get 'about' => 'static_pages#about'
  get 'about_introduction' => 'static_pages#about_introduction'
  get 'about_honors' => 'static_pages#about_honors'
end

Rails.application.routes.draw do

  root 'static_pages#home'

  resources :products, only: [:index, :show]
  
  get 'product' => 'static_pages#product'
  get 'product_detail' => 'static_pages#product_detail'
  get 'laboratory' => 'static_pages#laboratory'
  get 'support' => 'static_pages#support'

  get 'news' => 'static_pages#news'
  get 'news_content' => 'static_pages#news_content'
  
  get 'about' => 'static_pages#about'
  get 'about_introduction' => 'static_pages#about_introduction'
  get 'about_honors' => 'static_pages#about_honors'

  get 'careers' => 'static_pages#careers'
  get 'careers_detail' => 'static_pages#careers_detail'
end

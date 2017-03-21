Rails.application.routes.draw do

  root 'static_pages#home'

  resources :products, only: [:index, :show]
  resources :infos, only:[:index, :show]
  resources :careers, only: [:index, :show]
  
  get 'product' => 'static_pages#product'
  get 'product_detail' => 'static_pages#product_detail'
  get 'laboratory' => 'static_pages#laboratory'
  get 'support' => 'static_pages#support'

  get 'search' => 'static_pages#search'

  # get 'news' => 'static_pages#news'
  # get 'news_content' => 'static_pages#news_content'
  
  get 'about' => 'static_pages#about'
  get 'about_introduction' => 'static_pages#about_introduction'
  get 'about_honors' => 'static_pages#about_honors'

  # get 'careers' => 'static_pages#careers'
  get 'careers_detail' => 'static_pages#careers_detail'


  namespace :admin do
    root 'home#show', as: 'root'
    resources :home, only: [:show, :edit, :update] 
    resources :products
    resources :infos do
      collection do
        post :upload
      end
    end
    resources :about, only: [:show, :edit, :update] 
    resources :careers
  end

end

Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'static_pages#home'

    resources :products, only: [:index, :show]
    resources :infos, only:[:index, :show]
    resources :careers, only: [:index, :show]

    resource :search, only: :show
    resources :messages, only: [:new, :create]

    get 'product' => 'static_pages#product'
    get 'product_detail' => 'static_pages#product_detail'
    get 'laboratory' => 'static_pages#laboratory'
    get 'support' => 'static_pages#support'
    get 'privacy' => 'static_pages#privacy'
    get 'terms_of_use' => 'static_pages#terms_of_use'
    get 'static_search' => 'static_pages#search'

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
      resources :laboratories, only: [:show, :edit, :update]
      resources :careers
      resources :users, except: [:show, :edit, :update]
      resources :messages, except: [:new, :create]

      get '/login', to: 'sessions#new'
      post '/login', to:'sessions#create'
      delete '/logout', to: 'sessions#destroy'
    end
  end

end

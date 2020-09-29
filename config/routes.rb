Rails.application.routes.draw do

  get 'bookmarks/create'
  get 'bookmarks/destroy'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :passwords => 'users/passwords'
   }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  # get 'tweets/search'
  resources :tweets
  resources :trips
  resources :users
  resources :relationships
  resources :bookmarks
  # get 'spot', to: 'tweets#new_spot'
  #   post 'spot', to: 'tweets#create_spot'
  
    resource :users do
    resource :relationships, only: [:create, :destroy, :show,]
  end


 

  resources :tweets do
    resource :bookmarks
  end

  resources :trips do
    resource :bookmark_trips
  end
  
  resources :tweets do
    resources :comments, only: :create
  end

  resources :trips do
    resources :trip_comments, only: :create
  end
 

end

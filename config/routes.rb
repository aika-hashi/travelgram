Rails.application.routes.draw do

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
  # get 'spot', to: 'tweets#new_spot'
  #   post 'spot', to: 'tweets#create_spot'
end

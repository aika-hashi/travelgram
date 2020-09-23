Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  # get 'tweets/search'
  resources :tweets
  resources :trips

  # get 'spot', to: 'tweets#new_spot'
  #   post 'spot', to: 'tweets#create_spot'
end

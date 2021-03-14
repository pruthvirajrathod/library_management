Rails.application.routes.draw do
  resources :authors
  resources :users
  get '/authors', to: 'authors#index'
  get '/books', to: 'books#index'
  get '/users', to: 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

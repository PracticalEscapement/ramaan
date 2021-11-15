Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#index'
  get 'home/my_page', to: 'home#my_page', as: :my_page

  get 'restaurants/index', to: 'restaurants#index', as: :restaurants
  get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  post 'restaurants/create', to: 'restaurants#create', as: :create_restaurant
  get 'restaurants/show/:id', to: 'restaurants#show', as: :restaurant

  get 'posts/index', to: 'posts#index', as: :posts
  
  resources :restaurants do
    resources :posts
  end
  
end

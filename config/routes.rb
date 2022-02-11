Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#index'

  resources :restaurants, :posts

  resources :restaurants do
    resources :posts
  end

  resources :restaurants do
    resources :addresses
  end

  # Api Routes
  namespace :api do
    namespace :v1 do
      resources :restaurants, :posts, only: [:index, :show, :create, :destroy] 
    end
  end
  
  delete '/restaurants/:restaurant_id/addresses/:id', to: 'addresses#destroy', as: :destroy_restaurant_address

end

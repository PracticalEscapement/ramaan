Rails.application.routes.draw do
  root 'home#index'


  resources :restaurants, :posts

  #resources :restaurants do
  #  resources :posts
  #end

  #resources :restaurants do
  #  resources :addresses
  #end

  #delete '/restaurants/:restaurant_id/addresses/:id', to: 'addresses#destroy', as: :destroy_restaurant_address

  # Api Routes
  namespace :api do
    namespace :v1 do 
      devise_for :users, controllers: {
        registrations: 'api/v1/users/registrations',
        sessions: 'api/v1/users/sessions',
      }
      resources :current_user, only: [:index]
      resources :restaurants, :posts, only: [:index, :show, :create, :destroy] 

    end
  end

end

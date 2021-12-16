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

  delete '/restaurants/:restaurant_id/addresses/:id', to: 'addresses#destroy', as: :destroy_restaurant_address

end

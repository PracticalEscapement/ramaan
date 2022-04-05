Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do 

      devise_for :users, controllers: {
        registrations: 'api/v1/users/registrations',
        sessions: 'api/v1/users/sessions'
      }

      resources :current_user, only: [:index]
      resources :restaurants, only: [:index, :show, :create, :destroy]

      resources :posts, only: [:index, :show, :create, :destroy] do
        resources :comments, only: [:index, :show, :create, :destroy]
      end

    end
  end

end

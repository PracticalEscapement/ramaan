Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root 'home#index'
  get 'home/my_page', to: 'home#my_page', as: :my_page
end

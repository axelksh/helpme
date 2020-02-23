Rails.application.routes.draw do
  root 'home#index'

  devise_for :admins
  devise_for :users

  resources :tasks do
    resources :help_offers
  end
  namespace :account do
    resources :tasks do
      resources :help_offers
    end
    resources :users
  end
  namespace :admin do
    resources :admins
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

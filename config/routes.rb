Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'static#welcome'

  resources :posts do
    resources :votes, only: [:create]
  end

  resources :users, only: [:new, :create, :show] do
    resources :posts, only: [:index]
  end

  resources :sessions, only: [:new, :create, :destroy]
end

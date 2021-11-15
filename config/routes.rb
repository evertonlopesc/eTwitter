Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :users
  resources :posts
  resources :users do
    resources :relationships, only: [:create]
  end
  resources :relationships, only: [:destroy]

  get 'search', to: "users#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

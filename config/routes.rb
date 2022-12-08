Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # friends routes
  get 'friends', to: 'friends#index'
  get "friends/new", to: "friends#new"
  post "friends", to: "friends#create", as: :new_friend

  resources :friends, only: [:show] do
    resources :meetings, only: %i[new create]
  end

  # resources :meetings, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end

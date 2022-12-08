Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # friends routes
  get 'friends', to: 'friends#index'
  get "friends/new", to: "friends#new"
  patch "friends", to: "friends#update_user", as: :update_user
  get "friends/edit", to: "friends#edit", as: :edit
  patch "friends", to: "friends#update", as: :update
  # patch "friends/:id", to: "friends#update", as: :update_friend

  # meetings routes
  get 'users/:id/meeting', to: 'meetings#show', as: :meeting

  # nested routes
  resources :friends, only: [:show] do
    resources :meetings, only: %i[new create]
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end

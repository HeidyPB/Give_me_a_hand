Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'friends', to: 'friends#index'
  get 'users/:id/meeting', to: 'meetings#show', as: :meeting

  # reviews routes
  get 'users/:id/reviews/new', to: 'reviews#new', as: :review_new
  post 'users/:id/reviews', to: 'reviews#create', as: :review_create
  get 'users/:id/reviews', to: 'reviews#show', as: :review

  # get 'friends/:id'

  resources :friends, only: [:show] do
    resources :meetings, only: %i[new create show]
  end

  # resources :meetings, only: [:show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

end

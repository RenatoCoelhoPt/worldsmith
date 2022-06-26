Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#index'

  resources :characters, only: %i[index show create update destroy]
  resources :groups, only: %i[index show create update destroy]

  # redirects all requests to unexisting routes to root
  get '*path', to: 'pages#index', via: :all
end

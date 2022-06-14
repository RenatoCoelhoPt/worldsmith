Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :characters, only: %i[index]
      resources :groups, only: []
    end
  end

  #redirects all requests to unexisting routes to root
  get '*path', to: 'pages#index', via: :all
end

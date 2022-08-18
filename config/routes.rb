Rails.application.routes.draw do
  get 'movies/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :articles
  # Defines the root path route ("/")
  # root "articles#index"
  root 'movies#index'
end

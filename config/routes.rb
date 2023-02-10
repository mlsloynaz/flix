Rails.application.routes.draw do
  resources :reviews
  resources :your_scaffolds
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "movies#index"
#  get "movies" => "movies#index"
#  get "movies/new" => "movies#new"
#  get "movies/:id" => "movies#show", as: "movie"
#  get "movies/:id/edit" => "movies#edit", as: "edit_movie"
#   # Defines the root path route ("/")
#   # root "articles#index"
#   patch "movies/:id" => "movies#update"

resources :movies
end

Rails.application.routes.draw do

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

# to achieve /movies/2/reviews
  resources :movies do
    resources :reviews
  end
end

Rails.application.routes.draw do
  resources :reviews
  resources :user_games
  resources :games
  resources :users

  get '/games' => 'games#index'
  get '/games/:id' => 'games#show'
  post "/", to: "auth#login"
  post "/user_games" => "user_games#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

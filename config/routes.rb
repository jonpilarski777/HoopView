Rails.application.routes.draw do
  # resources :team_stats
  # resources :daily_games
  # resources :user_daily_games
  # resources :schedules
  # resources :favorite_teams
  # resources :users_favorite_teams
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/hello", to: "application#hello_world"

  # get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

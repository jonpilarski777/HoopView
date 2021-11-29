Rails.application.routes.draw do

#do block enables any pathes with api first to signify rails vs. client side routes
  namespace :api do

    resources :user_favorite_teams
    get "/favorite_teams/:id", to: "favorite_teams#show"
    get "/favorite_teams", to: "favorite_teams#index"

    get "/schedules/:id", to: "schedules#show"
    get "/schedules", to: "schedules#index"

    get "/team_stats/:id", to: "team_stats#show"
    get "/team_stats", to: "team_stats#index"

    get "/daily_games", to: "daily_games#index"
    get "/user_daily_games", to: "user_daily_games#index"

    get "/me", to: "users#show"
    post "/signup", to: "users#create"
    post "/login", to: "sessions#create"
    delete "/logout", to: "sessions#destroy"
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/hello", to: "application#hello_world"

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end

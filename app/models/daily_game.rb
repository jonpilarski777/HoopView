class DailyGame < ApplicationRecord
    has_many :user_daily_games
    has_many :users, through: :user_daily_games

    has_many :favorite_teams
end

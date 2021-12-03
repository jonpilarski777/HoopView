class FavoriteTeam < ApplicationRecord
    has_many :user_favorite_teams
    has_many :users, through: :user_favorite_teams

    belongs_to: :daily_game

    has_one :schedule
    has_one :team_stat
end

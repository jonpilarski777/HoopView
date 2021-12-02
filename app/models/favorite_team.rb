class FavoriteTeam < ApplicationRecord
    has_many :user_favorite_teams, dependent: :destroy
    has_many :users, through: :user_favorite_teams

    has_one :schedule
    has_one :team_stat
end

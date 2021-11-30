class User < ApplicationRecord
    has_many :user_favorite_teams
    has_many :favorite_teams, through: :user_favorite_teams

    has_many :user_daily_games
    has_many :daily_games, through: :user_daily_games

    has_secure_password

    validates :username, presence: true, uniqueness: true
    validates :email, uniqueness: true, allow_blank: true

end

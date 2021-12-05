class DailyGameDetailSerializer < DailyGameSerializer
    has_many :user_daily_games
    has_many :users
    has_many :favorite_teams
end

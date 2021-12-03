class FavoriteTeamDetailSerializer < FavoriteTeamSerializer
  belongs_to :daily_game
  
  has_one :schedule
  has_one :team_stat
end

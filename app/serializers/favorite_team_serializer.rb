class FavoriteTeamSerializer < ActiveModel::Serializer
  attributes :id, :team_name, :wins, :losses, :user_favorite_team, :favorite_team_name
  # has_many :user_favorite_teams

   

  def user_favorite_team 
    UserFavoriteTeam.find_by(user_id: current_user&.id, favorite_team_id: self.object.id)
  end

  def favorite_team_name 
    self.object.team_name
  end

end

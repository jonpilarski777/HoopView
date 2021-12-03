class FavoriteTeamSerializer < ActiveModel::Serializer
  attributes :id, :team_name, :wins, :losses, :user_favorite_team

  def user_favorite_team 
    UserFavoriteTeam.find_by(user_id: current_user.id, favorite_team_id: self.object.id)
  end
end

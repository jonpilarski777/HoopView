class UserFavoriteTeamsSerializer < ActiveModel::Serializer
  attributes :id, :team, :user_id, :favorite_team_id, :ranking, :user_favorite_team
  belongs_to :favorite_team

  
  def user_favorite_team 
    UserFavoriteTeam.find_by(user_id: current_user&.id, favorite_team_id: self.object.id)
  end

  # def favorite_team_name 
  #   FavoriteTeam.team_name
  # end

end

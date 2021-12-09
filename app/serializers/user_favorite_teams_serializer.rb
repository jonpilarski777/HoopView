class UserFavoriteTeamsSerializer < ActiveModel::Serializer
  attributes :id, :team, :user_id, :favorite_team_id, :ranking, 
  belongs_to :favorite_team

  
  # def test
  #   self
  #   # UserFavoriteTeam.find_by(user_id: current_user&.id, favorite_team_id: self.object.id)
  # end

  # # def favorite_team_name 
  # #   FavoriteTeam.team_name
  # # end

end

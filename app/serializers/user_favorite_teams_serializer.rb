class UserFavoriteTeamsSerializer < ActiveModel::Serializer
  attributes :id, :team, :user_id, :favorite_team_id
  belongs_to :favorite_team

  
  # def user_favorite_team 
  #   UserFavoriteTeam.find_by(user_id: current_user&.id, favorite_team_id: self.object.id)
  # end

end

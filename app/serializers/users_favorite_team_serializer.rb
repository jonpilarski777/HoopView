class UsersFavoriteTeamSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :favorite_team_id
end

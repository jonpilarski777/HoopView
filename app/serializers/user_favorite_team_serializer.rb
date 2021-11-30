class UserFavoriteTeamSerializer < ActiveModel::Serializer
  attributes :id, :team, :user_id, :favorite_team_id
end

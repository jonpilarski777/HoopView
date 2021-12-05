class UserFavoriteTeamsSerializer < ActiveModel::Serializer
  attributes :id, :team, :user_id, :favorite_team_id
  belongs_to :favorite_team
end

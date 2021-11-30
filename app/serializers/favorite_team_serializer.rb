class FavoriteTeamSerializer < ActiveModel::Serializer
  attributes :id, :team_name, :wins, :losses
end

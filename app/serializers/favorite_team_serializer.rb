class FavoriteTeamSerializer < ActiveModel::Serializer
  attributes :id, :teamName, :wins, :losses
end

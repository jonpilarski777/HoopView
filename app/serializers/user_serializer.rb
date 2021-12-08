class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :name
  has_many :favorite_teams
end

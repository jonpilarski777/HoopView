class DailyGameSerializer < ActiveModel::Serializer
  attributes :id, :home_team, :away_team, :venue
end

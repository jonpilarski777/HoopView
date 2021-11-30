class DailyGameSerializer < ActiveModel::Serializer
  attributes :id, :matchup, :date, :venue
end

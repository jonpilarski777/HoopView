class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :opponent, :venue, :date, :time, :home, :favorite_team
end

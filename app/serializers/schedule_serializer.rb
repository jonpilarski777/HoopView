class ScheduleSerializer < ActiveModel::Serializer
  attributes :id, :opponent, :venue, :date, :home, :conference_game, :favorite_team_id
end

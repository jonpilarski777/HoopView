class UserDailyGameSerializer < ActiveModel::Serializer
  attributes :id, :today, :user_id, :daily_games_id
end

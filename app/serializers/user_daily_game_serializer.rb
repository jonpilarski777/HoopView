class UserDailyGameSerializer < ActiveModel::Serializer
  attributes :id, :today, :user_id, :daily_game_id
end

class DailyGameSerializer < ActiveModel::Serializer
  attributes :id, :matchup, :date, :venue
  # , :user_daily_game 

  # def user_daily_game 
  #   UserDailyGame.find_by(user_id: current_user.id, daily_game_id: self.object.id)
  # end

end

class UserDailyGame < ApplicationRecord
    belongs_to :user
    belongs_to :daily_game
end

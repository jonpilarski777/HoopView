class Api::UserDailyGamesController < ApplicationController
    #get '/api/user_daily_games'
    def index 
        render json: UserDailyGame.all
    end

end

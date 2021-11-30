class Api::UserDailyGamesController < ApplicationController
    def index 
        render json: UserDailyGame.all
    end

end

class Api::DailyGamesController < ApplicationController
    def index 
        render json: DailyGame.all
    end

end

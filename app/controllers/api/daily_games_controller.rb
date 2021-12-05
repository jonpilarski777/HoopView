class Api::DailyGamesController < ApplicationController
    
    # get '/api/daily_games'
    def index 
        render json: DailyGame.all
    end

    # get '/api/daily_games/:id'
    def show 
        render json: DailyGame.find(params[:id])
    end

end

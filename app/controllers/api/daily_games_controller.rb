class Api::DailyGamesController < ApplicationController
    skip_before_action :confirm_authentication 
    # get '/api/daily_games'
    def index 
        render json: DailyGame.all
    end

    # get '/api/daily_games/:id'
    def show 
        render json: DailyGame.find(params[:id]), serializer: DailyGameDetailSerializer
    end

end

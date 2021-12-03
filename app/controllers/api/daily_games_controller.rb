class Api::DailyGamesController < ApplicationController
    def index 
        render json: DailyGame.all
    end

    def show 
        render json: DailyGame.find(params[:id]), serializer: DailyGameDetailSerializer
    end

end

class Api::TeamStatsController < ApplicationController
    def index 
        render json: TeamStat.all
    end

    def show 
        render json: TeamStat.find(params[:id])
    end
end

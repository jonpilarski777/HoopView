class Api::TeamStatsController < ApplicationController
    # get '/api/team_stats'
    def index 
        render json: TeamStat.all
    end
     # get '/api/team_stats/:id'
    def show 
        render json: TeamStat.find(params[:id]), status: :ok
    end
end

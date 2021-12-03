class Api::FavoriteTeamsController < ApplicationController

    def index 
        render json: FavoriteTeam.all
    end

    def show 
        render json: FavoriteTeam.find(params[:id]), serializer: FavoriteTeamDetailSerializer
    end

end

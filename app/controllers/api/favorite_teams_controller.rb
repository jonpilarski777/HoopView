class Api::FavoriteTeamsController < ApplicationController
    skip_before_action :confirm_authentication
    # get '/api/favorite_teams'
    def index 
        render json: FavoriteTeam.all
    end

    #get '/api/favorite_teams/:id'
    def show 
        render json: FavoriteTeam.find(params[:id]), serializer: FavoriteTeamDetailSerializer
    end

end

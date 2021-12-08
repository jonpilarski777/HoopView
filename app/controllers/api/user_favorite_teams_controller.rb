class Api::UserFavoriteTeamsController < ApplicationController
    before_action :find_and_validate_user_favorite_team, only: [:show, :update, :destroy]
    skip_before_action :confirm_authentication

    # get '/api/user_favorite_teams'
    def index 
        render json: UserFavoriteTeam.all
    end

    
    # get '/api/user_favorite_teams/:id'
    def show 
        render json: @user_favorite_team, status: :ok
    end

    # post '/api/user_favorite_teams'
    def create 
        user_favorite_team = current_user.user_favorite_teams.create(user_favorite_team_params)

        if user_favorite_team.valid?
            render json: user_favorite_team, status: :created
        else
            render json:user_favorite_team.errors.full_messages, status: :unprocessable_entity
        end
    end

    #patch '/api/user_favorite_teams/:id'
    def update
        if @user_favorite_team.update(update_user_favorite_team_params)
            render json: @user_favorite_team, status: :ok
        else
            render json: @user_favorite_team.errors.full_messages, status: :unprocessable_entity
        end
    end

    #delete '/api/user_favorite_teams/:id'
    def destroy 
        @user_favorite_team.destroy
        render json: @user_favorite_team
    end

    private

    def user_favorite_team_params
        params.permit(:user_id, :favorite_team_id, :team, :ranking)
    end

    #Use instance variable because we only want this method to be used inside this class
    def find_and_validate_user_favorite_team
        @user_favorite_team = UserFavoriteTeam.find_by(id: params[:id])

        if !@user_favorite_team
            render json: {message: "invalid team id"}, status: :not_found
        end
    end

    def update_user_favorite_team_params
        params.permit(:team, :user_id, :favorite_team_id)
    end

end

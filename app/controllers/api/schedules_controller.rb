class Api::SchedulesController < ApplicationController
    skip_before_action :confirm_authentication 
    
    #get '/api/schedules'
    def index 
        render json: Schedule.all
    end

    #get '/api/schedules/:id'
    def show 
        render json: Schedule.find(params[:id])
    end
end

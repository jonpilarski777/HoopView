class ApplicationController < ActionController::API
    include ActionController::Cookies
    # rescue_from ActiveRecord::RecordNotFound, with: :not_found

    # before_action :confirm_authentication
  

    def hello_world
        session[:count] = (session[:count] || 0) + 1
        render json: { count: session[:count] }
    end

    # private
  
    # def current_user
    #   @current_user ||= User.find_by(id: session[:user_id])
    # end
  
    # def logged_in?
    #   current_user (put !! in front later)
    # end
  
    # def confirm_authentication
    #   render json: { error: "You must be logged in to do that." }, status: :unauthorized unless logged_in?
    # end
  
    # def not_found(e)
    #   render json: { error: e.message }, status: :not_found
    # end

  
end



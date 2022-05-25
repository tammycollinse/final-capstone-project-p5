class ApplicationController < ActionController::API
# rescue from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_reponse
# rescue from ActiveRecord::RecordNotFound, with: :render_not_found_response

  include ActionController::Cookies
  # before_action :authorize_user
 
    private

  # this is the method that returns our current user to us
    def current_user
    
    @current_user ||=  User.find_by(id: session[:current_user])
    #   byebug
      
    end

    # def authorize_user 
      # this is also the confirm authentication according to Dakota's lectures
    #   return render json: {"Not Authorized , You need to be logged into do that"} , status: :unauthorized unless current_user
    # end

    
    # private
    # def render_not_found_entity_reponse
    #   render json: {errors: invalid} , status: :not_found
    # end

    # def render_unprocessable_entity_reponse
    #   render json: {errors: invalid.record.errors} , status: :unprocessable_entity
    # end

end

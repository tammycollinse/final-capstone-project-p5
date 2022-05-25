class SessionsController < ApplicationController

    # skip_before_action :authorize_user, only [:create]


   #this will be our post '/login'
    def create
        user = User.find_by(username: params[:username] )

        if user&.authenticate(params[:password] )
            session[:current_user] = user.id

            # session[:login_attempts] = 0 
     
            render json: user , status: :ok
        else
            render json: { errors: "Invalid Password or Username"} , status: :unauthorized

            # session[:login_attempts] ||= 0

            # this is incrementing the login attempts
            # session[:login_attempts] += 1


        end

    end
 
    #this is our action so that we can logout: delete "/logout"
    def destroy
        session.delete :user_id
        head :no_content
    end

    # def current_user
    #     current_user_logged_in = User.find_by(id: session[:user_id])
    #     render json: current_user_logged_in
    # end

  

end 
   
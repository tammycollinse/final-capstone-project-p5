class UsersController < ApplicationController
# skip_before_action :authorize_user, only: [:signup]


    def show #/me
        if
        render json: current_user
        else
        render json: {} , status: :unauthorized
        end
    end

    def index
        users = User.all
        render json: users
    end

    def create
    new_user = User.create(user_params)

    if new_user.valid?
        session[:user_id] = user.id
        render json: new_user , status: :created
    else
        render json: {errors: new_user.errors.full_messages} , status: :unprocessable_entity
    end 
    end

    private
    
    def user_params
        params.permit(:full_name , :email ,:username , :password )
    end
    
    
end

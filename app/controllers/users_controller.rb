class UsersController < ApplicationController
    def create
        user = User.create(user_params)
        if user.id
            session[:user_id] = user.def index
            render json: user
        else
            render json {error: "Invalid username and password combination"}, status: :unprocessable_entity
        end
    end

    def show
        
    end

    private 

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end
end

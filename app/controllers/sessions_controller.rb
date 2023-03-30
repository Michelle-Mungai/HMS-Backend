class SessionsController < ApplicationController
   


    def create
      user = User.find_by(username: params[:username])
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: { message: "Welcome, #{user.username}!" }
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
    end
  
    def destroy
      session.delete :user_id
      render json: { message: "Goodbye, see you soon!" }
    end
  end
  
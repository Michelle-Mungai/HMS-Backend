class SessionsController < ApplicationController

    def create
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: { message: "Welcome, #{user.username}!" }
      else
        render json: { error: "Invalid username or password" }, status: :unauthorized
      end
    end


    def destroy
        return render json: {errors: ["User not found", "kindly log in"]}, status: :unauthorized unless session.include? :user_id
        session.delete :user_id
        render json: { message: "Goodbye!"}
    end
  end
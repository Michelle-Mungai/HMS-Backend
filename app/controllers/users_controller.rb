class UsersController < ApplicationController
    # skip_before_action :authorized, only: :create

    def create
      user = User.create(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: { message: "Account created successfully" }, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def show
      if @current_user
        render json: { username: @current_user.username, email: @current_user.email, name: @current_user.name }
      else
        render json: { error: "No active user" }, status: :unauthorized
      end
    end
  
    private
  
    def user_params
      params.permit(:username, :email, :password, :options, :name)
    end
  end
  
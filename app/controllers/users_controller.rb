class UsersController < ApplicationController
    # before_action :authorize?, only: :show

    def create
        user = User.create(user_params)
        if user.valid?
            session[:user_id] = user.id
            render json: user
        else
            render json: {message: "Unsucsessful"}, status: :unprocessable_entity
        end
    end

    def show
        user  = User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: {errors: "You are not logged in"}, status: :unauthorized
        end
    end

    # def generate_password_reset_token
    #     self.reset_password_token = SecureRandom.urlsafe_base64
    #     self.reset_password_sent_at = Time.now.utc
    #     save!
    #   end
    
    #   def reset_password_token_valid?
    #     (self.reset_password_sent_at + 1.hour) > Time.now.utc
    #   end
    
    #   def clear_password_reset_token
    #     self.reset_password_token = nil
    #     self.reset_password_sent_at = nil
    #     save!
    #   end

    private


    def user_params
        params.permit(:username, :email, :password )
    end
end


class PasswordResetController < ApplicationController

    def create
        user = User.find_by(email: params[:email])
        if user
          user.generate_password_reset_token
          UserMailer.password_reset(user).deliver_now
          render json: { success: true }, status: 200
        else
          render json: { message: "Email not found"}, status: :not_found
        end
      end
    
      def edit
        @user = User.find_by(password_reset_token: params[:id])
        if @user&.password_reset_token_valid?
          render json: { message: "You are free to reset"}
        else
          render json: { message: "You do not have authority to reset your password"}
        end
      end
    
      def update
        @user = User.find_by(password_reset_token: params[:id])
        if @user&.password_reset_token_valid?
          if @user.update(password: params[:password])
            @user.clear_password_reset_token
            session[:user_id] = @user.id
          else
            render json: { message: "Password not reset successfully"}
          end
        else
          render json: { message: "Password reset token has expired, please retry again"}, status: :unauthorized
        end
      end
    end

    private

  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end

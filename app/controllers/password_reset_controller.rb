class PasswordResetController < ApplicationController

#   def create
#     user = User.find_by(email: params[:email])
#     if user
#       user.generate_password_reset_token
#       UserMailer.password_reset(user).deliver_now
#       render json: { success: true }, status: 200
#     else
#       render json: { message: "Email not found" }, status: :not_found
#     end
#   end
#   def edit
#     @user = User.find_by(password_reset_token: params[:id])
#     if @user&.password_reset_token_valid?
#       render json: { message: "You are free to reset" }
#     else
#       render json: { message: "You do not have authority to reset your password" }
#     end
#   end
#   def update
#     @user = User.find_by(password_reset_token: params[:id])
#     if @user&.password_reset_token_valid?
#       if @user.update(password_params)
#         @user.clear_password_reset_token
#         session[:user_id] = @user.id
#         render json: { message: "Password reset successfully" }
#       else
#         render json: { message: "Password not reset successfully" }
#       end
#     else
#       render json: { message: "Password reset token has expired, please retry again" }, status: :unauthorized
#     end

#     def generate_password_reset_token
#       self.reset_password_token = SecureRandom.urlsafe_base64
#       self.reset_password_sent_at = Time.now.utc
#       save!
#     end
  
#     def reset_password_token_valid?
#       (self.reset_password_sent_at + 1.hour) > Time.now.utc
#     end
  
#     def clear_password_reset_token
#       self.reset_password_token = nil
#       self.reset_password_sent_at = nil
#       save!
#     end


#     private

#     def password_params
#       params.permit(:password )
#     end
# end
end
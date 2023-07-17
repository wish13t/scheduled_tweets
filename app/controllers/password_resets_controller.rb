class PasswordResetsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      #send email
      PasswordMailer.with(user: @user).reset.deliver_later
    end
    redirect_to root_path, notice: "If an account with email was found, we have sent a link to reset your password"
  end
end
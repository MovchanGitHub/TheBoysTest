# frozen_string_literal: true

# RegistrationController
class RegistrationController < ApplicationController
  def new; end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to registration_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end

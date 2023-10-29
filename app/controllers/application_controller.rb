# frozen_string_literal: true
class ApplicationController < ActionController::Base
  before_action :set_current_user
  def set_current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end
  
  def authenticate_user
    redirect_to auth_path unless @current_user.present?
  end
end

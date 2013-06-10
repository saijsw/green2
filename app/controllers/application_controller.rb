class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :ads_number

protected
  def ads_number
    @ads_count = Ad.count
  end

  def login_required
    redirect_to new_user_session_path, notice: 'Please login first.' unless current_user
  end

  #devise strong parameters
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up,) { |u| u.permit(:username, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :current_password, :password, :password_confirmation) }
  end
end
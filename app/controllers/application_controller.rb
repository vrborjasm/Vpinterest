class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
 
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :user_photo] )
    devise_parameter_sanitizer.permit(:edit, keys: [:username, :email, :user_photo] )
  end
end

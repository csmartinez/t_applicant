class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    registrations_params = [:fname, :lname, :career, :goals, :email, :password, :password_confirmation]
    update_params = [:fname, :lname, :career, :goals, :email, :password, :current_password]

    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(registrations_params)
    end
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(update_params)
    end
  end
end

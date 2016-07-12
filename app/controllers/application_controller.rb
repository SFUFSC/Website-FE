class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
    protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
    end
  end
  
  def configure_permitted_parameters
    # Only add some parameters
    devise_parameter_sanitizer.for(:accept_invitation).concat [:first_name, :last_name]
    # Override accepted parameters
    devise_parameter_sanitizer.for(:accept_invitation) do |u|
      u.permit(:first_name, :last_name, :password, :password_confirmation,
               :invitation_token)
    end
  end
end

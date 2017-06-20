class RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :user_name) }
  end
end

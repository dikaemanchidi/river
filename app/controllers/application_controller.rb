class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :dob, :email, :password, :current_password.blank?, :admin])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :dob, :email, :password, :current_password.blank?, :admin])
    end
end

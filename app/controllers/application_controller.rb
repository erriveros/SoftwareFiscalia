class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:rut,:job])
  end

  def current_person
    if current_user
      current_user
    elsif current_admin
      current_admin
    else
      User.new
    end
  end

end

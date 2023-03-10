class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:sign_up]
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name avatar])
  end

  def after_sign_in_path_for(_resource)
    questions_path
  end
end

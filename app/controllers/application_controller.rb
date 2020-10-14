class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?
  DEVISE_SIGN_UP_FIELDS = %i[name email password password_confirmation].freeze
  DEVISE_UPDATE_FIELDS  = %i[name email password current_password].freeze

  def after_sign_out_path_for(user)
    new_user_session_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(DEVISE_SIGN_UP_FIELDS)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(DEVISE_UPDATE_FIELDS)}
  end
end

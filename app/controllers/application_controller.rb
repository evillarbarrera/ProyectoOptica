class ApplicationController < ActionController::Base
	#include Pundit
before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombre,:user_types_id])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombre,:user_types_id])
    
  end

end

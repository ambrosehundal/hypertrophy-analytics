class ApplicationController < ActionController::Base

# If any of the devise controllers are being called, use configure_permitted_parameters before a controller action
before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:password, :email, :first_name, :password_confirmation, :last_name, :date_of_birth])

end



end

class ApplicationController < ActionController::Base

# If any of the devise controllers are being called, use configure_permitted_parameters before a controller action
before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:password, :email, :first_name, :password_confirmatio,n last_name, date_of_birth)}

end



end

class RegistrationController < Devise::RegistrationController
   # prepend_before_action :require_no_authentication, only: :cancel
    protected

    def after_sign_in_path_for(users)
        user_workouts
    end

    def create
    
    end


end

class RegistrationController < Devise::RegistrationController
   
    protected

    def after_sign_in_path_for(users)
        workout_path
    end


end

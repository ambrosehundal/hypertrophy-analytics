class WorkoutsController < ApplicationController
    #authenticate user before creating a new workout
    before_filter :authenticate_user!


    def index
        @user = User.find(params[:id])
        @workouts = @user.workouts.all 
    end 

    def new
        @workout = Workout.new
    end

    def show
        @workout = Workout.find(params[:id])
    end

    private

    def workout_params
        params.require(:workout).permit(:name, :workout_date, :cardio)
    end
end

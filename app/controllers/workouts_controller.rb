class WorkoutsController < ApplicationController
    #authenticate user before creating a new workout
   # before_filter :authenticate_user!


    def index
        @user = User.find(params[:user_id])
        @workouts = @user.workouts.all 
    end 

    def new
        @user = User.find(params[:user_id])
        @workout = @user.workouts.new
    end

    def create
        @user = User.find(params[:user_id])
        @user.workout.save
    end

    def show
        @workout = Workout.find(params[:id])
    end


    private

    def workout_params
        params.require(:workout).permit(:name, :workout_date, :cardio)
    end
end

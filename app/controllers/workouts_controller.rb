class WorkoutsController < ApplicationController
    #authenticate user before creating a new workout
   # before_filter :authenticate_user!


    def index
        @user = User.find(params[:user_id])
        @workouts = @user.workouts.all 
        json_response(@workouts)
    end 

    def new
        @user = User.find(params[:user_id])
        @workout = @user.workouts.new
        json_response(@workout)
    end

    def create
        @user = User.find(params[:user_id])
        @workout = @user.workouts.create(workout_params)
        json_response(@workout)
        #@workout.save
        redirect_to :action => 'index'
    end

    def show
        @user = User.find(params[:user_id])
        @workout = @user.workouts.find(params[:id])
        @exercises = @workout.exercises.all
        json_response(@exercises)

    end


    private

    def workout_params
        params.require(:workout).permit(:name, :workout_date, :cardio)
    end
end

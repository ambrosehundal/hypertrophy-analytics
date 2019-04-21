class WorkoutsController < ApplicationController

    def index
        @workouts = Workout.all 
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

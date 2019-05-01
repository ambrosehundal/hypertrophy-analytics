class ExercisesController < ApplicationController

    def index
        @user = User.find(params[:user_id])
        @workout = @user.workouts.find(params[:id])
        @exercises = @user.workouts.exercises.all
        

    end 

    def new
        @user = User.find(params[:user_id])
        @workout = @user.workouts.find(params[:id])
        @exercise = @user.workouts.exercises.new
       
    end

    def create
        @user = User.find(params[:user_id])
        @workout = @user.workouts.create(workout_params)
        #@workout.save
        redirect_to :action => 'index'
    end

    def show
        @user = User.find(params[:user_id])
        @workout = @user.workouts.find(params[:id])
    end


    private

    def workout_params
        params.require(:workout).permit(:name, :workout_date, :cardio)
    end
end

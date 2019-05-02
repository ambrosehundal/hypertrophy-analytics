class ExercisesController < ApplicationController

    def index
       
        @workout = @user.workouts.find(params[:id])
        @exercises = @workout.exercises.all
        

    end 

    def new
        @user = User.find(params[:user_id])
        @workout = @user.workouts.find(params[:workout_id])
        @exercise = @workout.exercises.new
       
    end

    def create
        @user = User.find(params[:user_id])
        @workout = @user.workouts.find(params[:id])
        @exercise = @user.workouts.exercises.create(exercise_params)
        #@workout.save
        redirect_to :action => 'index'
    end

    def show
        @user = User.find(params[:user_id])
        @workout = @user.workouts.find(params[:id])
        @exercise = @user.workouts.exercises.find(params[:exercise_id]) # check if logic is correcr

    end


    private

    def exercise_params
        params.require(:exercise).permit(:name, :equipment_type, :main_body_part, :sets_performed)
    end
end

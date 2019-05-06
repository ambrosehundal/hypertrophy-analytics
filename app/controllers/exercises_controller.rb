class ExercisesController < ApplicationController

    def index
       # @user = User.find(params[:user_id])
        @workout = Workout.find(params[:workout_id])
        @exercises = @workout.exercises.all
        json_response(@exercises)
        

    end 

    def new
      #  @user = User.find(params[:userid])
        @workout = Workout.find(params[:workout_id])
        @exercise = @workout.exercises.new
        json_response(@exercise)
       
    end

    def create
       # @user = User.find(params[:user_id])
        @workout = Workout.find(params[:workout_id])
        @exercise = @workout.exercises.create(exercise_params)
        json_response(@exercise)
        #@workout.save
        redirect_to :action => 'index'
    end

    def show
    
        @workout = Workout.find(params[:workout_id])
        @exercise = @workout.exercises.find(params[:id]) 
        json_response(@exercise)

    end


    private

    def exercise_params
        params.require(:exercise).permit(:name, :equipment_type, :main_body_part, :sets_performed, :exercise_notes)
    end
end

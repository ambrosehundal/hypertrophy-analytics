class ExerciseSetsController < ApplicationController
  before_action :set_exercise_set, only: [:show, :edit, :update, :destroy]

  # GET /exercise_sets
  # GET /exercise_sets.json
  def index
    @exercise = Exercise.find(params[:exercise_id])
    @exercise_sets = @exercise.exercise_sets.all
  end

  # GET /exercise_sets/1
  # GET /exercise_sets/1.json
  def show
    
  end

  # GET /exercise_sets/new
  def new
    @exercise = Exercise.find(params[:exercise_id])
    @exercise_set = @exercise.exercise_sets.new
  end

  # GET /exercise_sets/1/edit
  def edit
  end

  # POST /exercise_sets
  # POST /exercise_sets.json
  def create
    @exercise = Exercise.find(params[:exercise_id])
    @exercise_set = @exercise.exercise_sets.create(exercise_set_params)

    respond_to do |format|
      if @exercise_set.save
        format.html { redirect_to :exercise_exercise_sets, notice: 'Exercise set was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_set }
      else
        format.html { render :new }
        format.json { render json: @exercise_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_sets/1
  # PATCH/PUT /exercise_sets/1.json
  def update
    respond_to do |format|
      if @exercise_set.update(exercise_set_params)
        format.html { redirect_to @exercise_set, notice: 'Exercise set was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_set }
      else
        format.html { render :edit }
        format.json { render json: @exercise_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_sets/1
  # DELETE /exercise_sets/1.json
  def destroy
    @exercise_set.destroy
    respond_to do |format|
      format.html { redirect_to exercise_sets_url, notice: 'Exercise set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_set
      @exercise_set = ExerciseSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_set_params
      params.require(:exercise_set).permit(:weight_lbs, :reps, :notes)
    end
end

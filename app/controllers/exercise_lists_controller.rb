class ExerciseListsController < ApplicationController
  before_action :set_exercise_list, only: [:show, :edit, :update, :destroy]

  # GET /exercise_lists
  # GET /exercise_lists.json
  def index
    @exercise_lists = ExerciseList.all
  end

  # GET /exercise_lists/1
  # GET /exercise_lists/1.json
  def show
  end

  # GET /exercise_lists/new
  def new
    @exercise_list = ExerciseList.new
  end

  # GET /exercise_lists/1/edit
  def edit
  end

  # POST /exercise_lists
  # POST /exercise_lists.json
  def create
    @exercise_list = ExerciseList.new(exercise_list_params)

    respond_to do |format|
      if @exercise_list.save
        format.html { redirect_to @exercise_list, notice: 'Exercise list was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_list }
      else
        format.html { render :new }
        format.json { render json: @exercise_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_lists/1
  # PATCH/PUT /exercise_lists/1.json
  def update
    respond_to do |format|
      if @exercise_list.update(exercise_list_params)
        format.html { redirect_to @exercise_list, notice: 'Exercise list was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_list }
      else
        format.html { render :edit }
        format.json { render json: @exercise_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_lists/1
  # DELETE /exercise_lists/1.json
  def destroy
    @exercise_list.destroy
    respond_to do |format|
      format.html { redirect_to exercise_lists_url, notice: 'Exercise list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_list
      @exercise_list = ExerciseList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_list_params
      params.require(:exercise_list).permit(:exercise_name, :bodypart)
    end
end

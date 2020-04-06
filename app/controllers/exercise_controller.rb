class ExerciseController < ApplicationController
    def index
      @workout = Workout.find(params[:workout_id])
    end
  end

  class ExercisesController < ApplicationController
    before_action :set_exercise, only: %i[show edit update destroy]
  
    # GET /WO
    def index
      @exercises = exercise.all

    end
  
    # GET /exercise/1
    def show
      @exercise = @exercises.select { |exercise| exercise["id"] == params[:id].to_i }.first 
      # params[:something] is always a string! Here we need to turn it into an integer
    end
  
    # GET /drinks/new
    def new
      @exercise = Exercise.new
    end
  
    # GET /drink/1/edit
    def edit
    end
  
    # POST /drink
    def create
      @exercise = Exercise.new(exercise_params)
  
      if @exercise.save
        redirect_to @exercise, notice: 'Exercise was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /wo/1
    def update
      if @exercise.update(exercise_params)
        redirect_to @exercise, notice: 'Exercise was successfully updated.'
  
      else
        render :edit
      end
    end
  
    # DELETE /drinks/1
    def destroy
      @exercise.delete
      redirect_to exercise_url, notice: 'Exercise was successfully deleted.'
    end
  
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def exercise_params
      params.require(:exercise).permit(:name, :body_part, :description, :video_url, :equipment)
    end
  end

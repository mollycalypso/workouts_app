class WorkoutsController < ApplicationController
    before_action :set_workout, only: %i[show edit update destroy]
  
    # GET /drinks
    def index
      @workouts = Workout.all
    end
  
    # GET /workout/1
    def show
      @workout = @workouts.select { |workout| workout["id"] == params[:id].to_i }.first 
      # params[:something] is always a string! Here we need to turn it into an integer
    end
  
    # GET /drinks/new
    def new
      @workout = Workout.new
    end
  
    # GET /drink/1/edit
    def edit
    end
  
    # POST /drink
    def create
      @workout = Workout.new(workout_params)
  
      if @workout.save
        redirect_to @workout, notice: 'Workout was successfully created.'
      else
        render :new
      end
    end
  
    # PATCH/PUT /drinks/1
    def update
      if @workout.update(workout_params)
        redirect_to @workout, notice: 'Workout was successfully updated.'
  
      else
        render :edit
      end
    end
  
    # DELETE /drinks/1
    def destroy
      @workout.destroy
      redirect_to workout_url, notice: 'Workout was successfully deleted.'
    end
  
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def workout_params
      params.require(:workout).permit(:name, :creator, :difficulty_level, :exercises, :details, :equipment)
    end
  end

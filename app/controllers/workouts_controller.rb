class WorkoutsController < ApplicationController
    before_action :set_workout, only: %i[show destroy]
  
    # GET /WO
    def index
      @workouts = policy_scope(Workout).order(created_at: :desc)

      @workouts = Workout.all
    end
  
    # GET /workout/1
    def show
    @workout = Workout.find(params[:id])
    @amount = Amount.new
    end
  
    # GET /wo/new
    def new
      @workout = Workout.new
    end
  
    # GET 1/edit
    # def edit
    #   @workout = Workout.find(params[:id])
    #   authorize @workout
    # end
  
    # POST /
    def create
      @workout = Workout.new(workout_params)
      @workout.save
      redirect_to root_path
    end
  
    # PATCH/PUT /wo/1
    def update
      @workout = Workout.find(params[:id])
      @workout.update(workout_params)
      redirect_to root_path
    end
  
    # DELETE /drinks/1
    def destroy
      @workout.destroy
      redirect_to root_path, notice: 'Workout was successfully deleted.'
    end
  
  
    private
  
    # Use callbacks to share common setup or constraints between actions.
    def set_workout
      @workout = Workout.find(params[:id])
    end
  
    # Only allow a trusted parameter "white list" through.
    def workout_params
      params.require(:workout).permit(:name, :creator, :difficulty_level, :details, :equipment)
    end
  end

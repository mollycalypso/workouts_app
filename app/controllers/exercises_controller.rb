class ExercisesController < ApplicationController
  before_action :set_exercise, only: %i[show edit update destroy]

    def index
      @exercises = Exercise.all
    end

    def show
      # @workout = Workout.find(params[:id])
      # @amount = Amount.new
      end
    

      def new
        @exercise = Exercise.new
      end
    
      def create
        @exercise = Exercise.create(exercise_params)
        @exercise.save
        redirect_to exercises_path(@exercise)
      end

      def update
      @exercise = Exercise.find(params[:id])
      @exercise.update(exercise_params)
      redirect_to exercises_path(@exercise)
    end

      # DELETE //1
      def destroy
        @exercise.destroy
        redirect_to exercises_path, notice: 'Exercise was successfully deleted.'
      end
    
    
    
      private
    
      # Use callbacks to share common setup or constraints between actions.
      def set_exercise
        @exercise = Exercise.find(params[:id])
      end
    
      # Only allow a trusted parameter "white list" through.
      def exercise_params
        params.require(:exercise).permit(:name, :description, :equipment, :body_part, :video_url)
      end
    end
  
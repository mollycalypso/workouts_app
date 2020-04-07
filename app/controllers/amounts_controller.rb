class AmountsController < ApplicationController
  def create
    @workout = Workout.find(params[:workout_id])
    @amount = Amount.new(amount_params)
    @amount.workout = @workout
    @amount.save
      redirect_to workout_path(@workout)
   
  end

  def destroy
    @amount = Amount.find(params[:id])
    @amount.destroy
    redirect_to workout_path(@amount.workout)
  end

  private

  def amount_params
    params.require(:amount).permit(:content, :exercise_id)
  end
end



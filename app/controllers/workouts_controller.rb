class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    @users = User.all
    @user = User.find_by(params[:id])
  end
end

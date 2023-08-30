class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    @users = User.all
    @user = User.find_by(params[:id])
  end

  def all
    @workouts = Workout.all
    @instructors = Instructor.all
    @instructor = Instructor.find_by(params[:id])
  end

  def show
  end
end

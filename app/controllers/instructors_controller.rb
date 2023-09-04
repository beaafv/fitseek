class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
    @instructor = Instructor.find_by(params[:id])
  end

  def show
    @instructor = Instructor.find(params[:id])
    @workout = Workout.find_by(params[:workout_id])
    @workouts = Workout.where(instructor: @instructor)
  end
end

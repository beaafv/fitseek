class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    @users = User.all
    @user = User.find_by(params[:id])

    if params[:query].present?
      sql_subquery = "category ILIKE :query OR subcategory ILIKE :query"
      @workouts = @workouts.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def all
    @workouts = Workout.all
    @instructors = Instructor.all
    @instructor = Instructor.find_by(params[:id])
  end

  def show
    @workout = Workout.find(params[:id])
    @instructor = Instructor.new

    @workouts= Workout.all

    @markers = [
      {
        lat: @workout.latitude,
        lng: @workout.longitude,
        info_window_html: render_to_string(partial: "info_window"),
        marker_html: render_to_string(partial: "map")
      }
    ]

  end
end

class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    @workout = Workout.find_by(params[:id])
    @users = User.all
    @user = User.find_by(params[:id])

    if params[:query].present?
      sql_subquery = <<~SQL
        workouts.name ILIKE :query
        OR workouts.category ILIKE :query
        OR workouts.subcategory ILIKE :query
        OR instructors.name ILIKE :query
      SQL
      @workouts = Workout.joins(:instructor).where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def new
    @workout = Workout.new
  end

  def all
    @user = current_user
    good_workouts = Workout.where(category: @user.favourite_activities)
    bad_workouts = Workout.where.not(category: @user.favourite_activities)
    @workouts = good_workouts + bad_workouts
    @workout = Workout.find_by(params[:id])

    @instructors = Instructor.all
    @instructor = Instructor.find_by(params[:id])
    if params[:query].present?
      sql_subquery = <<~SQL
        workouts.name ILIKE :query
        OR workouts.category ILIKE :query
        OR workouts.subcategory ILIKE :query
        OR instructors.name ILIKE :query
      SQL
      @workouts = Workout.joins(:instructor).where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @workout = Workout.find(params[:id])
    @booking = Booking.new
    @instructors = Instructor.all
    @instructor = Instructor.find(params[:id])
    @workouts = Workout.all
    @markers = [
      {
        lat: @workout.latitude,
        lng: @workout.longitude,
        info_window_html: render_to_string(partial: "info_window"),
        marker_html: render_to_string(partial: "map")
      }
    ]
  end

  def create
    # @bookings = Booking.all
    # @user.booking = current_user
    # @workout = Workout.find(params[:workout_id])
    # @booking = Booking.new(bookings_params)

    # if @booking.save

    #   redirect_to dashboard_path, notice: 'Booking saved!'
    # else
    #   render "workouts/show", status: :unprocessable_entity
    # end
  end

  def mobility
    @workouts = Workout.where(category: "Mobility")
    @workout = Workout.find_by(params[:id])
  end

  def strength
    @workouts = Workout.where(category: "Strength")
    @workout = Workout.find_by(params[:id])
  end

  def cardio
    @workouts = Workout.where(category: "Cardio")
    @workout = Workout.find_by(params[:id])
  end

  def outdoors
    @workouts = Workout.where(category: "Outdoors")
    @workout = Workout.find_by(params[:id])
  end

  private
  def bookings_params
    params.require(:booking).permit(:date)
  end
end

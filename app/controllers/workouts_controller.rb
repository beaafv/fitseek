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
      @workouts = @workouts.joins(:instructor).where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def new
    @workout = Workout.new
  end

  def all
    @workouts = Workout.all
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
      @workouts = @workouts.joins(:instructor).where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @workout = Workout.find(params[:id])
    @booking = Booking.new
    @instructor = Instructor.new

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
    @bookings = Booking.all
    @user.booking = current_user
    @workout = Workout.find(params[:workout_id])
    @booking = Booking.new(bookings_params)
   
    if @booking.save
      redirect_to dashboard_path, notice: 'Booking saved!'
    else
      render "workouts/show", status: :unprocessable_entity
    end
  end

  private
  def bookings_params
    params.require(:booking).permit(:date)
  end
end

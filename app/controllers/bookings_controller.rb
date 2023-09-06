class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @user = current_user
    @workout = Workout.find(params[:workout_id])
    @instructor = @workout.instructor
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.workout = @workout

    if (@workout.cost < @user.fsdollars) || ((@workout.cost == @user.fsdollars) && @booking.save)
      @user.fsdollars -= @workout.cost
      @user.fsdollars += 10
      @user.fsdollars
      @user.save
      redirect_to dashboard_path, notice: 'Booking saved!'

    else
      render "workouts/show", status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @user = current_user
    @workout = Workout.find_by(params[:workout_id])


    if @booking.destroy
      @user.fsdollars += @workout.cost
      @user.fsdollars -= 10
      @user.save
    end

  end

  private

  def bookings_params
    params.require(:booking).permit(:date)
  end
end

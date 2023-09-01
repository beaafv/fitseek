class BookingsController < ApplicationController
  def create
    @user = User.find(params[:id])
    @workout = Workout.find(params[:workout_id])
    @booking.workout = @workout
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.save
    if @booking.save
      redirect_to profile_path, notice: 'Booking saved!'
    else
      render "workouts/show", status: :unprocessable_entity
    end
  end

  def bookings_params
    params.require(:bookings).permit(:date)
  end

  

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

end

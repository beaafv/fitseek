class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def profile
    @user = User.find_by(params[:id])
  end

  def dashboard
    @user = User.find_by(params[:id])
    @workout = Workout.find_by(params[:id])
    @bookings = Booking.where(user: current_user)
  end

  def test
  end
end

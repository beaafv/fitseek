class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:home, :test, :refer_to_a_friend]

  def home
  end

  def profile
    @user = current_user
  end

  def dashboard
    @user = current_user
    @workout = Workout.find_by(params[:id])
    @bookings = Booking.where(user: current_user)
  end

  def test
  end

  def fitseek_info
    @user = current_user
  end

  def refer_to_a_friend
    
  end
end

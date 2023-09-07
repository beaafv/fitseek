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

  def add_points
    @user = current_user
    @user.fsdollars += 10
    @user.fsdollars
    @user.save
    redirect_to dashboard_path
    # if current_user
    #   @user.fsdollars += 10
    #   @user.fsdollars
    #   @user.save
    #   redirect_to dashboard_path, notice: 'Points added successfully'
    # else
    #   redirect_to refer_a_friend_path, alert: 'User not logged in'
    # end
  end

end

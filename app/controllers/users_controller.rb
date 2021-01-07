# frozen_string_literal: true

# rubocop:disabled Style/Documentation
class UsersController < ApplicationController
  # include SessionsHelper
  # before_action :logged_in_user ,only: [:new]
  def index; end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = 'user successfully created'
      redirect_to @user
    else
      flash.now[:error] = "Error: #{@user.errors.full_messages.join(', ')}"
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @upcoming_events = Event.past.order(date: :DESC)
    @past_events = Event.upcoming.order(date: :ASC)
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
# rubocop:enabled Style/Documentation

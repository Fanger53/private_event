# rubocop:disabled Style/Documentation
class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(username: params[:session][:username])
    if user
      log_in user
      flash[:success] = 'logged in with success'
      redirect_to events_path
    else
      flash.now[:danger] = 'invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = 'Logged out'
    redirect_to login_path
  end
end
# rubocop:enabled Style/Documentation

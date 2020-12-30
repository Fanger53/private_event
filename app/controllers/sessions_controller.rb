class SessionsController < ApplicationController
  def new
  end
  def create
    user=User.find_by(username:params[:session][:username])
    if user
      log_in user
      redirect_to user
    else
      flash.now[:danger]='invalid email/password combination'
      render 'new'
    end
  end
  def destroy
    session[:user_id]=nil
    flash[:notice] = 'Logged out'
    redirect_to root_path
  end
end

class AttendancesController < ApplicationController
  def create
    @attendance= Attendance.new(attendances_params)
    if @attendance.save
      flash[:success]='you are now attending this event' 
      redirect_to user_path(current_user)
    else
      flash.now[:alert]='already attending'
    end 
  end
  private
  def attendances_params
    params.require(:attendance).permit(:user_id,:event_id)
  end
end

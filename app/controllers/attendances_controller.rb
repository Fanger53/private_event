class AttendancesController < ApplicationController
  def create
    @attendance = Attendance.new(attendances_params)
    if @attendance.save
      flash[:success] = 'you are now attending this event'
      redirect_to user_path(current_user)
    else
      flash.now[:alert] = 'already attending'
    end
  end

  def destroy
    @attendance = Attendance.find_by(user_id: attendances_params[:user_id])
    redirect_to event_path(attendances_params[:event_id]) if @attendance.destroy
  end

  private

  def attendances_params
    params.require(:attendance).permit(:user_id, :event_id)
  end
end

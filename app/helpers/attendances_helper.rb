module AttendancesHelper
  def attendance_exist?(event_id,user_id)
    if Attendance.find_by(event_id:event_id,user_id:user_id)
      return "d-none"
    end
  end
end

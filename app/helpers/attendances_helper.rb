# frozen_string_literal: true

# rubocop:disabled Style/Documentation
module AttendancesHelper
  def attendance_exist?(event_id, user_id)
    'd-none' if Attendance.find_by(event_id: event_id, user_id: user_id)
  end

  def attendance_not_exist?(event_id, user_id)
    'd-none' if Attendance.find_by(event_id: event_id, user_id: user_id).blank?
  end

  def attendance
    attendance.all
  end
end
# rubocop:enabled Style/Documentation

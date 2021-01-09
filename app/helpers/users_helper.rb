# rubocop:disabled Style/Documentation
module UsersHelper
  def current_user_upcoming_event
    current_user.attended_events.where('date >= ?', DateTime.now)
  end

  def current_user_past_event
    current_user.attended_events.where('date < ? ', DateTime.now)
  end
end
# rubocop:enabled Style/Documentation

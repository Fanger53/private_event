# rubocop:disable Style/GuardClause
class ApplicationController < ActionController::Base
  helper_method :current_user, :log_in, :current_user_upcoming_event, :current_user_past_event
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id:
      session[:user_id])
    end
  end

  def current_user_upcoming_event
    current_user.attended_events.where('date >= ?', DateTime.now)
  end

  def current_user_past_event
    current_user.attended_events.where('date < ? ', DateTime.now)
  end
end
# rubocop:enable Style/GuardClause

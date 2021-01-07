# frozen_string_literal: true

# rubocop:disable Style/GuardClause
# rubocop:disable Style/Documentation
class ApplicationController < ActionController::Base
  helper_method :current_user, :log_in
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id:
      session[:user_id])
    end
  end
end
# rubocop:enable Style/Documentation
# rubocop:enable Style/GuardClause

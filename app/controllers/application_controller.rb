class ApplicationController < ActionController::Base
  protect_from_forgery

private
  helper_method :current_user
  def current_user
    User.first
  end
end

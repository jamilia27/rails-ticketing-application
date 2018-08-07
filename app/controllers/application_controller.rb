# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :authorize

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    session[:user_id] ? true : false
  end

  def authorize
    return unless logged_in? == false
    redirect_to signin_path, alert: "You must be logged in to view this page."
  end
end

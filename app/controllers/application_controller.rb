class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize!
    puts "authorize!!! #{Rails.env}"
    unless current_user
      redirect_to new_user_session_path
      return
    end
  end
end

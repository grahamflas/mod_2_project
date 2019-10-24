class ApplicationController < ActionController::Base
  
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def authorized
    if !logged_in?
      redirect_to login_path, notice: "You must be logged in to see this page"
    end
  end

end

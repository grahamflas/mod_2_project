class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?
  
  def current_user
    User.find_by(id: session[:user_id])
  end

  # `!` coerces `current_user` to a boolean (true) and negates it (false)
  # add the second `!` to make `!!current_user` return true if 
  def logged_in?
    !!current_user
  end

  def authorized
    if !logged_in?
      redirect_to login_path, notice: "You must be logged in to see this page"
    end
  end

end

class AccountsController < ApplicationController

  def login
  end

  def process_login
    user = User.find_by(name: params[:name])

    if user
      session[:user_id] = user.id
    else
      flash.now["notice"] = "No user found with that name"
      render :login
    end
  end

end

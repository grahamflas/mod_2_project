class UsersSessionsController < ApplicationController

  ##add validation so cannot add same user to session twice

  def create
    UsersSession.create(user_id: params[:user_id], session_id: params[:session_id])
    redirect_to session_path(params[:session_id])
  end

end

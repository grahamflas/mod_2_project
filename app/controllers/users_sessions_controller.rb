class UsersSessionsController < ApplicationController

  def create
    UsersSession.create(user_id: params[:user_id], session_id: params[:session_id])
    redirect_to session_path(params[:session_id])
  end

end

class UsersSessionsController < ApplicationController

  ##add validation so cannot add same user to session twice

  def create
    UsersSession.create(user_id: params[:user_id], session_id: params[:session_id])
    redirect_to session_path(params[:session_id])
  end

  def destroy
    @user = User.find(params[:user_id])
    UsersSession.find_by(user_id: params[:user_id], session_id: params[:session_id]).delete
    redirect_to user_path(@user)
  end

end

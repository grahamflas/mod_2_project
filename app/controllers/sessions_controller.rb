class SessionsController < ApplicationController

  def index
    @sessions = Session.search(params[:search])
  end
  
  def show
    @session = Session.find(params[:id])
  end

  def pick_users
    @users = User.all
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.create(session_params)
    usersession = UsersSession.create(session_id: @session.id, user_id: 1)
    redirect_to session_path(@session)
  end
    
  private

  def session_params
    params.require(:session).permit(
      :start_time,
      :end_time,
      :distance,
      :search
    )
  end

end

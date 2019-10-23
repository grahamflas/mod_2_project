class SessionsController < ApplicationController

  def index
    @sessions = Session.search(params[:search])
  end
  
  def show
    @session = Session.find(params[:id])
  end

  def pick_users
    @session = Session.find(params[:session_id])
    if params.keys.include?("search")
      the_key = params[:search].keys.first
      return @users = User.search(params[:search])
    else
      return @users = User.all
    end
    byebug
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.create(session_params)  ##Add validation to make sure User inputs distance value
    usersession = UsersSession.create(session_id: @session.id, user: User.find_by(first_name: "Graham"))
    redirect_to session_path(@session)
  end

    
  private

  def session_params
    params.require(:session).permit(
      :start_time,
      :end_time,
      :distance
    )
  end

end

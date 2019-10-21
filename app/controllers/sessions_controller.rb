class SessionsController < ApplicationController

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.create(session_params)
    params[:session][:users].shift
    #byebug
    params[:session][:users].each do |user|
      usersession = UsersSession.create(session_id: @session.id, user_id: user)
    end
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

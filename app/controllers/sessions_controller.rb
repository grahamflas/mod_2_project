class SessionsController < ApplicationController

  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.create(session_params)

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

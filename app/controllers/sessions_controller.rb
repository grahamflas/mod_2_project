class SessionsController < ApplicationController
  before_action :authorized

  def index
    @sessions = Session.search(params[:search])
  end
  
  def show
    @session = Session.find(params[:id])
  end

    ## WHY DOES THIS NOT REQUIRE STRONG PARAMETERS I DON'T UNDERSTAND
  def pick_users
    @session = Session.find(params[:session_id])
    if params.keys.include?("search")
      return @users = User.search(params[:search])
    else
      return @users = User.all
    end
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)

    if @session.valid?
      @session.save
      usersession = UsersSession.create(
        session_id: @session.id, 
        user_id: session[:user_id]
      )

    redirect_to session_path(@session)

    else
      render :new
    end
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

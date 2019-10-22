class UsersSessionsController < ApplicationController

  def create
    @user = User.find_by(name: "Graham")
    redirect_to user_path(@user)
  end

  private

  def users_sessions_params
    params.require(:user_session).permit(:user_id, :session_id)
  end
end

class UsersSessionsController < ApplicationController

  def create
  end

  private

  def users_sessions_params
    params.require(:user_session).permit(:user_id, :session_id)
  end
end

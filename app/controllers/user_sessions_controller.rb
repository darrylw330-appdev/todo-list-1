class UserSessionsController < ApplicationController
  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "You have been signed out."
  end
end

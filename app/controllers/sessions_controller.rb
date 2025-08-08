class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    # user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
    #   u.name = auth['info']['name']
    #   u.email = auth['info']['email']
    #   u.access_token = auth['credentials']['token']
    #   u.refresh_token = auth['credentials']['refresh_token']
    # end
    session[:user_id] = 1
    redirect_to root_path, notice: "Signed in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Signed out!"
  end
end

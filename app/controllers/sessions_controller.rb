class SessionsController < ApplicationController
  before_filter :authenticate_user!
  skip_before_filter :authenticate_user!, :only => [:new, :create]

  def new
    if signed_in?
      redirect_to dashboard_url
    end
  end

  def create
    auth_hash = request.env['omniauth.auth']
    unless @auth = Authorization.find_from_hash(auth_hash)
      @auth = Authorization.create_from_hash(auth_hash, current_user)
    end
    self.current_user = @auth.user

    redirect_to dashboard_url

  end

  def failure
  end

  def destroy
    reset_session
    redirect_to root_url, :notice => "Logged out!"
  end
end

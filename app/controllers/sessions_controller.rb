class SessionsController < ApplicationController
  def new
  end

  def create
    auth_hash = request.env['omniauth.auth']
    unless @auth = Authorization.find_from_hash(auth_hash)
      @auth = Authorization.create_from_hash(auth_hash, current_user)
    end
    self.current_user = @auth.user

    render :text => "Welcome, #{current_user.name}."

  end

  def failure
  end

  def destroy
  end
end

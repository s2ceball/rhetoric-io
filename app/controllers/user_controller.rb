class UserController < ApplicationController
  # Check that users are authenticated
  before_filter :authenticate_user!

  def index
    # For listing own projects
    @user = User.find(current_user)
  end

  def edit
    # For editing profile
  end

  def update
    # For updating profile
  end
end

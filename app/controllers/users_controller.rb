class UsersController < ApplicationController
  
  def set_active_path
    @active_path = 'configuration;user;users'
  end

  def index
    @users = User.all
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :menus
  @active_path = 'home'

  def menus
    @menus = []
    @menus.append(Menu.new('Home', root_path, 'home'))
    user_configurations = [Menu.new('Roles', roles_path, 'roles'), Menu.new('Users', '/users', 'users')]
    configurations = [Menu.new('User', nil, 'user', user_configurations)]
    @menus.append(Menu.new('Configuration', nil, 'configuration', configurations))
  end

end

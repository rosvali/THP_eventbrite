class Admin::AdminController < ApplicationController

before_action :authenticate_user!
before_action :require_admin

def index
	@users = User.all
	@admin = current_user
end

private

def require_admin
	redirect_to root_path if current_user.is_admin == false
end

end

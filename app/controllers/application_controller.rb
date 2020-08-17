class ApplicationController < ActionController::Base

def require_admin
	redirect_to root_path if current_user.is_admin == false
end

def finder
  Event.find(params[:id])
end

end

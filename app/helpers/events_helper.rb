module EventsHelper

def already_participate?
	return true if admin?
  @event.users.any? {|user| user.id == current_user.id }
end

def admin?
	@event.user_id == current_user.id ? true : false
end

end

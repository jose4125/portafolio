class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method [:current_user, :logged_in?]
  protected

    def login( user )
      session[:acces_id] = user.id
    end
    def current_user
      current_user ||= Acces.find(session[:acces_id]) if session[:acces_id]
    end

    def logged_in?
      !current_user.nil?
    end
    def auth
      redirect_to admin_url unless logged_in?
    end
end

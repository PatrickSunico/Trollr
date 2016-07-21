class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private
    def current_user # check if user is logged in
      unless session[:user_id] # equals to false
        flash[:notice] = "Please Login Or Signup for an account"
        redirect_to('/login')
        return false
      end
    end
end

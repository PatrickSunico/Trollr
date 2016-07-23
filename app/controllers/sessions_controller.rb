class SessionsController < ApplicationController
  layout 'homepage'
  def new
    # render a form to login existing users
    # /login route
  end

  def create
    # # Find existing user by it's email
      user = User.find_by_username(params[:username])
      # if user exists && password has a match
    if user && user.authenticate(params[:password])
        # add session privileges to logged in user
        session[:user_id] = user.id
        # flash[:notice] = "Welcome back #{user.username}"
        # redirect to root route
        redirect_to '/index'
      #else if false either enter a username or password
      # or correct user mistakes
    elsif params[:username].blank? && params[:password].blank?
      flash[:alert] = "Please enter an Username and Password"
      render 'new'
    # catch all errors
    else
      flash[:notice] = "Incorrect Username and Password"
      render 'new'
    end
  end

  def destroy
    # flush out all session id's on user that's logs out
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "You have logged out, Wasn't it fun"
    redirect_to '/login'
  end
end

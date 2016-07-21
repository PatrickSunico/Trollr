class UsersController < ApplicationController
  def new
    # renders the assets for the hompage
    # renders signup form
  end

  def create
    # from signup form submit to create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id # store user.id to our session cookie
      flash[:notice] = "Sign up Success Welcome #{user.username}"
      redirect_to '/'
    else
      if User.exists?(:email => user.email)
        flash[:notice] = "Email Already Exists"
        redirect_to '/signup'
      else params[:user].present?
        flash[:notice] = "Please Enter a correct Username or Password"
        redirect_to '/signup'
      end
    end
  end

  private
  def user_params
    # Prepare user input values to be mass assigned
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end

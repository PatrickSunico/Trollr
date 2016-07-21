module ApplicationHelper
  def current_user
    # if session[:user_id] = true or false do this ||= assignment
    # get the value of current_user or find it inside the db and store it inside of the instance variable
    #    # @current_user || @current_user = User.find(session[:user_id])
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end

class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    ##authenticate user credentials
    if !!@user && @user.authenticate(params[:password])
      #set session and redirect on success
      session[:user_id] = @user.id
      redirect_to_user_path
    else
      #error message on fail
      message =
        "Something went wrong! Make sure your suername and password are correct."
      redirect_to login_path, notice: message
    end
  end
end

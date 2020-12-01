class SessionsController < ApplicationController

def logout
    session.delete(:user_id)
    redirect_to new_user_path
end

def new
end

def login
    user = User.find_by(username: params[:session][:username])

    if user && user.authenticate(params[:session][:password])
        session[:user_id] = user.user_id
        redirect_to user_path(user)
    else
        flash[:errors] = "Username or Password does not match. Please try again."
        redirect_to new_login_path 
    end 

end


end

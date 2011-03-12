
class LoginController < ApplicationController

  def new
    
  end

  def create
    if user = User.authenticate(params[:name],params[:password])
      session[:user_id] = user.id
      redirect_to users_url, :notice => 'login succeed'
    else
      redirect_to login_url, :alert => 'login failed'
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to login_url, :alert => 'loged out'
  end

end

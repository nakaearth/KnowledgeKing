class SessionsController < ApplicationController
  def create
    auth=request.env["omniauth.auth"]
    user=User.where(:provider=>auth["provider"],:uid=>auth["uid"]).first || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to :root, :notice=>"Signed in!"
  end
  
  def destroy
    session[:user_id]=nil
    redirect_to root_url, :notice=>"Signed out"
  end
  
  def failure
    render :text=> "<span style='color: red;'>Auth Failure</span>" 
  end
end

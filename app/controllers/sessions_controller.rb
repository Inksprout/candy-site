class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      puts "login succeded"
      #login
    else
      puts "login failed"
      flash[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy

  end
end

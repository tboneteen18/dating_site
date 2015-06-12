class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.where(username: params[:username]).first
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      session[:gender] = @user.gender
      redirect_to root_path , notice: "Welcome, you've got mail"
      else
        flash[:alert] = "Wrong username or password"
        render :new
      end
    end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'YOU LOGGED OUT'
  end
end

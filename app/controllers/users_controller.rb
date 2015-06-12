class UsersController < ApplicationController

#  before_action :find_user, only: [:edit, :update, :show]

  def show
    
  end
  def index
    @girls = User.female
    @guys = User.male
  end
  def edit
    @current = current_user
  end
  def update
    @current = current_user
    if @current.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  def new
  @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to(root_path, notice: 'YAY! welcome!!!!! 🙏' )
    else
      flash[:alert] = 'boo. that did not work 💩'
      render :new
    end
  end

  private
    def user_params
      params.require(:user).permit(:username, :password, :password_confirmation, :gender, :name, :birthdate, :bio)
    end
    def find_user
      @user = User.find(params[:id])
    end
end

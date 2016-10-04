class UsersController < ApplicationController
  before_action :is_authenticated, except: [:new, :create]
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: 'Account Created. Please Login'
    else
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def show
    @user = current_user
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end

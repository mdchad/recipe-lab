class UsersController < ApplicationController

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

  # GET /profile
  def show
    @user = current_user
  end

  # GET /profile/edit
  def edit
    @user = current_user

  end

  # PATCH/PUT /profile
  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end

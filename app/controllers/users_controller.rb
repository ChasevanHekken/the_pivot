class UsersController < ApplicationController
  protect_from_forgery with: :null_session

  def new
    @user = User.new
  end

  def show

  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: "User created. Please log in."
    else
      flash.now[:notice] = "User could not be created."
      render :new
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_users_path, notice: "The user was deleted."
  end

  private

  def user_params
    params.require(:user).permit(:first_name,:last_name,:email, :username, :password, :password_confirmation)
  end
end

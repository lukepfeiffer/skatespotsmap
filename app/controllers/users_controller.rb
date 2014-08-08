class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def update
    current_user.update_attributes(user_params)
    redirect_to user_path(current_user)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in(@user)
      redirect_to root_path
    else
      redirect_to new_user_path
    end
  end

  def user_params
    params.require(:user).permit(
      :username,
      :email,
      :password,
      :password_confirmation,
      :filepicker_url
    )
  end
end

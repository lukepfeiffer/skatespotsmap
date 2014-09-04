class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      sign_in(user)
      redirect_to root_path
    else
      flash[:alert] = 'Invalid Login'
      redirect_to new_user_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end

class LoginsController < ApplicationController
  def new
    @user = User.find_by(id: session[:user_id])
    redirect_to posts_path if @user
    @user = User.new
  end

  def create
    @user = User.find_by login_params
    if @user
      session[:user_id] = @user.id
      redirect_to posts_url
    else
      flash[:alert] = "Incorrect email or password!"
      render :new, status: :unprocessable_entity
    end
  end

  def logout
    reset_session
    redirect_to posts_path
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end

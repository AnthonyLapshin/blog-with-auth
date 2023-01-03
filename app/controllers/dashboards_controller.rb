class DashboardsController < ApplicationController
  def index
    @user = User.find_by(id: session[:user_id])
    @users = User.eager_load(:posts).all
    #redirect_to new_login_path unless @user
  end
end

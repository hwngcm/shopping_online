class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if user.save
      flash[:success] = t("signup_success")
      redirect_to user
    else
      render :new
    end
  end

  def show
    @user = User.find_by id: params[:id]
    unless user
      redirect_to root_url
      flash[:info] = t("no_user")
    end
  end

  private

  attr_reader :user

  def user_params
    params.require(:user).permit :name, :email,
      :password, :password_confirmation
  end
end

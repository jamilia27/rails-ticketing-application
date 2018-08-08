# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authorize, only: :show

  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id]) if params[:id].to_i == current_user.id
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "Account created successfully!"
    else
      flash.now[:alert] = "Could not create account. " \
      "Please make sure you are using a valid email."
      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :account_balance,
      :password,
      :password_confirmation
    )
  end
end

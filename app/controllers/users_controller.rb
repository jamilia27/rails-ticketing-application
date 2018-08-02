# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.email.downcase!
      flash[:notice] = "Account created successfully!"
      redirect_to user_path(@user)
    else
      flash.now[:alert] = "Could not create account. Please make sure you are using a valid email."
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

# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:signin][:email].downcase)
    if user&.authenticate(params[:signin][:password])
      session[:user_id] = user.id
      redirect_to user_path(user), notice: "Successfully logged in!"
    else
      unsucessful_login
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "Successfully logged out!"
  end

private

  def unsucessful_login
    flash.now.alert = "Incorrect email or password, please try again."
    render :new
  end
end

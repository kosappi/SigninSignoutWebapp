class SessionsController < ApplicationController
  before_action :hide_from_signed_in_user, only: [:new, :create]

  def new
  end

  def create
    user = User.find_by(mail: params[:session][:mail])
    if user.present? and user.authenticate(params[:session][:password]) and sign_in user
      redirect_to root_path
    else
      flash.now[:error] = 'メールアドレス、もしくはパスワードが間違っています。'
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

  private

  def hide_from_signed_in_user
    if signed_in?
      redirect_to root_path
    end
  end

end

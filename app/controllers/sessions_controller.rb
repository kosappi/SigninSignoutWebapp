class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(mail: params[:session][:mail])
    if user.present? and user.authenticate(params[:session][:password])
      # sign_in user
      # redirect_to user
    else
      flash.now[:error] = 'メールアドレス、もしくはパスワードが間違っています。'
      render 'new'
    end
  end
end

module SessionsHelper
  def sign_in(user)
    remember_token = User.create_remember_token
    session[:remember_token] = remember_token
    user.encrypted_remember_token = User.encrypt(remember_token)
    user.save
  end

  def current_user
    @current_user ||= User.find_by(encrypted_remember_token: User.encrypt(session[:remember_token]))
  end

  def signed_in?
    current_user.present?
  end

  def sign_out
    session.delete(:remember_token)
  end
end

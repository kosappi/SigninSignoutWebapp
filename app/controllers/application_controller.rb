class ApplicationController < ActionController::Base
  include SessionsHelper

  protect_from_forgery with: :exception

  def authenticate_user
    unless signed_in?
      redirect_to root_path
    end
  end
end

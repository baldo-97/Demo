class ApplicationController < ActionController::Base
  include Pagy::Backend

  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :user_signed_in?

  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    !current_user.nil?
  end

  def authenticate_user!
    redirect_to root_path, alert: 'Debes de iniciar sesion' unless user_signed_in?
  end
end

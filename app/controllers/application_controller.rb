class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= if params[:email]
                        User.where(email: params[:email]).first
                      elsif params[:role]
                        User.new(email: "#{params[:role]}@example.com", role: params[:role])
                      end
  end
  helper_method :current_user
end
